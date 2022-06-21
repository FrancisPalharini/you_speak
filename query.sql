-- VIEW ------------------------------------------------------------------

		-- MOSTRA AS SALAS VAZIAS APÓS INSERT DA TURMA 
		CREATE VIEW vw_salas_vazias as
				select sal.nome_sala from salas sal left join turma tur on  sal.id_sala = tur.id_sala where tur.id_turma is null;
	

	-- lista quantidade descontos
		CREATE VIEW vw_qtd_desconto as
				select sigla_desc, count(sigla_desc) as quantidade from matricula group by sigla_desc ;
	
	-- lista quantas turmas tem por curso
		CREATE VIEW vw_total_turma_curso as
				select sigla_idioma, count(sigla_idioma) as quantidade from turma group by sigla_idioma order by quantidade desc;

	--lista quantos alunos tem por curso
		create 	VIEW vw_total_alunos_curso as
			select tur.sigla_idioma as idioma, count(mat.id_matricula) as alunos from turma tur left join matricula mat on tur.id_turma = mat.id_turma		
				group by idioma order by alunos desc;

	--lista quantos func tem por departamento
		CREATE VIEW vw_funcionario_depart as
			select seto.nome_setor as setor, count(fun.cpf_func) as funcionarios from funcionarios fun right join setor 
			seto on seto.id_setor = fun.id_setor	group by setor order by funcionarios desc;		

	-- mostra quantos interessados NÃO efeturam matricula
		CREATE VIEW vw_interessado_perdidos as
		select count(inte.id_interessado) as 'Interessados que não efeturam matricula' from interessado inte left join matricula mat
				 on  inte.id_interessado = mat.id_interessado where mat.id_matricula is null;

	-- mostra quantos interessados  efeturam matricula
		
		CREATE VIEW vw_interessado_matriculados as
		select count(inte.id_interessado) as 'Interessados que não efeturam matricula' from interessado inte left join matricula mat
				 on  inte.id_interessado = mat.id_interessado where mat.id_matricula is true;

	-- mostra a capacidade total de alunos da filial
		create view vw_capacidade_total as 
		select sum(capacidade) as 'Capacidade Total' from salas where cnpj = 785965214001;


	-- mostra o total de matricula com responsavel
		create view vw_quantidade_responsavel as 
		select count(cpf_resp) as 'Total de Alunos com Responsavel' from aluno;

	--lista quantas turma tem por modalidade
		CREATE VIEW vw_turma_modalidade as
			select moda.nome_modalidade as modalidade, count(tur.id_turma) as turmas from modalidade moda right join turma 
			tur on moda.sigla = tur.sigla_mod	group by modalidade order by turmas desc;


		

-- PROCEDURES ---------------------------------------------------------------------------------------------
	delimiter $

	CREATE PROCEDURE proc_inserir_responsavel (
		IN p_cpf_resp NUMERIC(10), IN  p_data_nasc_resp DATETIME,  IN p_nome_resp VARCHAR(120), IN p_gen_resp  VARCHAR(2))
		BEGIN
			insert into responsavel values (p_cpf_resp,p_data_nasc_resp,'p_nome_resp','p_gen_resp');
		END$

	delimiter ;


	delimiter $
		-- tras todas as notas da matricula
	CREATE PROCEDURE proc_boleim_aluno (in p_id_matricula INT(10) )
		BEGIN
			select mat.id_nota from matricula mat right join notas nota on mat.id_nota = nota.id_nota where mat.id_matricula = p_id_matricula;

		END$
	delimiter ;

	delimiter $
		-- quantidade total dos produtos em estoque 
		create PROCEDURE proc_estoque_total ()
		BEGIN
			select nome_produto, quantidade from produtos; 
		end$
	delimiter ;


	delimiter $
		-- quantidade de funcionario por tipo de contrato
		create PROCEDURE proc_qtd_func_tipocontratato (in p_id_tipo_contrato int)
		BEGIN
			select count(fun.cpf_func), con.nome_contrato from funcionarios fun inner join tipo_contrato con on fun.cpf_func = con.cpf_func where id_tipo_contrato = p_id_tipo_contrato; 
		end$
	delimiter ;

delimiter $
		-- produto mais vendido
		create PROCEDURE proc_pros_mais_vendido (in p_id_prod int)
		BEGIN
			select count(ven.p_id_prod), con.nome_produto from venda_prod ven inner join produtos pro on ven.id_prod = pro.id_prod; 
		end$
	delimiter ;


-- TRIGGERS----------------------------------------------------------------

	DELIMITER $
		-- ATUALIZA O ESTOQUE APÓS VENDA DO PRODUTO
		CREATE TRIGGER tgr_remove_produto AFTER INSERT
		ON venda_prod 	FOR EACH ROW
		BEGIN
			UPDATE produtos SET estoque = estoque - NEW.quantidade
		WHERE id_produto = NEW.id_produto;
		END$
	DELIMITER ;

	DELIMITER $
		-- ATUALIZA O ESTOQUE APÓS DEVOLUÇÃO DO PRODUTO
		CREATE TRIGGER tgr_adiciona_produto AFTER DELETE
		ON venda_prod
		FOR EACH ROW
		BEGIN
			UPDATE produtos SET estoque = estoque + OLD.quantidade
		WHERE id_produto = OLD.id_produto;
		END$

	DELIMITER ;

	DELIMITER $
		-- ATUALIZA INTERESSADO MATRICULADO
		CREATE TRIGGER tgr_interessado_matricula AFTER INSERT
		ON matricula
		FOR EACH ROW
		BEGIN
			insert into matricula values new.id_interessado;
		END$

	DELIMITER ;

	DELIMITER $
		-- ATUALIZA  MATRICULA INTERESSADO
		CREATE TRIGGER tgr_matricula_aluno AFTER INSERT
		ON aluno
		FOR EACH ROW
		BEGIN
			insert into aluno values new.id_aluno;

		END$

	DELIMITER ;

	DELIMITER $
		-- assim que add um aluno menor de idade ja pede o responsavel pela trigger 
		CREATE TRIGGER tgr_verifica_responsavel AFTER INSERT
		ON aluno FOR EACH ROW 
		BEGIN
			if (Select TIMESTAMPDIFF(YEAR, 'new.data_nasc',NOW()) <18 ){
			call proc_inserir_responsavel (1236547891, '2022-01-01', 'Carlos', 'F');
			}
		END$

	DELIMITER;


