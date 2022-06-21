-- notas

INSERT INTO notas (id_nota, tipo_nota, data_nota) VALUES (1, 'prova' , CONVERT ("2021-10-10", DATE));
INSERT INTO notas (id_nota, tipo_nota, data_nota) VALUES (2, 'prova' , CONVERT ("2021-08-15",DATE));
INSERT INTO notas (id_nota, tipo_nota, data_nota) VALUES (3, 'trabalho' , CONVERT ("2021-11-15",DATE));
INSERT INTO notas (id_nota, tipo_nota, data_nota) VALUES (4, 'prova' , CONVERT ("2022-03-30",DATE));
INSERT INTO notas (id_nota, tipo_nota, data_nota) VALUES (5, 'trabalho' , CONVERT ("2022-04-11",DATE));
INSERT INTO notas (id_nota, tipo_nota, data_nota) VALUES (6, 'prova' , CONVERT ("2022-05-18",DATE));

-- desconto

INSERT INTO desconto (sigla_desc, descricao_desc, porcentagem_desc) VALUES ('Uni','Desconto para universitarios', 0.15);
INSERT INTO desconto (sigla_desc, descricao_desc, porcentagem_desc) VALUES ('Emp','Desconto para empresas', 0.30);
INSERT INTO desconto (sigla_desc, descricao_desc, porcentagem_desc) VALUES ('Fun','Desconto para funcionários', 0.20);


-- responsavel

INSERT INTO responsavel (cpf_resp, data_nasc_resp, nome_resp, gen_resp) VALUES (4123034780, CONVERT ("1974-11-30",DATE), 'Silvana da Silva Juares', 'F');
INSERT INTO responsavel (cpf_resp, data_nasc_resp, nome_resp, gen_resp) VALUES (3012584565, CONVERT ("1955-01-20",DATE), 'Maicon Firmino', 'M');
INSERT INTO responsavel (cpf_resp, data_nasc_resp, nome_resp, gen_resp) VALUES (4123462633, CONVERT ("1962-04-03",DATE), 'Melina Bueno', 'F');
INSERT INTO responsavel (cpf_resp, data_nasc_resp, nome_resp, gen_resp) VALUES (4442342222, CONVERT ("1967-07-14",DATE), 'José Cristo Santos', 'M');
INSERT INTO responsavel (cpf_resp, data_nasc_resp, nome_resp, gen_resp) VALUES (4420422424, CONVERT ("1979-12-18",DATE), 'Filipe Mello', 'M');
INSERT INTO responsavel (cpf_resp, data_nasc_resp, nome_resp, gen_resp) VALUES (4242243342, CONVERT ("1981-01-30",DATE), 'Alfredo de Jesus', 'M');

-- contato

INSERT INTO contato (id_con, num_tel, num_cel, email) VALUES (001, NULL, 14998526541, 'silvana@gmail.com'); 
INSERT INTO contato (id_con, num_tel, num_cel, email) VALUES (002, 1435698541, 14997452189, NULL); 
INSERT INTO contato (id_con, num_tel, num_cel, email) VALUES (003, NULL, 14998521566, 'afonso@gmail.com'); 
INSERT INTO contato (id_con, num_tel, num_cel, email) VALUES (004, 1432529632, 14951684656, 'melina@gmail.com'); 
INSERT INTO contato (id_con, num_tel, num_cel, email) VALUES (005, NULL, 14992151415, 'anakarina@gmail.com'); 
INSERT INTO contato (id_con, num_tel, num_cel, email) VALUES (006, 1432365214, 14982123153, 'joaosilva@gmail.com'); 

-- estado

INSERT INTO estado (sigla_estado, nome_estado) VALUES ('SP', 'SÃO PAULO');
INSERT INTO estado (sigla_estado, nome_estado) VALUES ('PR', 'PARANA');
INSERT INTO estado (sigla_estado, nome_estado) VALUES ('MS', 'MATO GROSSO DO SUL');
INSERT INTO estado (sigla_estado, nome_estado) VALUES ('RJ', 'RIO DE JANEIRO');
INSERT INTO estado (sigla_estado, nome_estado) VALUES ('MG', 'MINAS GERAIS');
INSERT INTO estado (sigla_estado, nome_estado) VALUES ('ES', 'ESPÍRITO SANTO');
INSERT INTO estado (sigla_estado, nome_estado) VALUES ('BA', 'BAHIA');

--cidade

INSERT INTO cidade (id_cidade, nome_cidade, sigla_estado) VALUES (00001, 'SÃO PAULO', 'SP');
INSERT INTO cidade (id_cidade, nome_cidade, sigla_estado) VALUES (00002, 'CURITIBA', 'PR');
INSERT INTO cidade (id_cidade, nome_cidade, sigla_estado) VALUES (00003, 'CAMPO GRANDE', 'MS');
INSERT INTO cidade (id_cidade, nome_cidade, sigla_estado) VALUES (00004, 'RIO DE JANEIRO', 'RJ');
INSERT INTO cidade (id_cidade, nome_cidade, sigla_estado) VALUES (00005, 'VITÓRIA', 'ES');
INSERT INTO cidade (id_cidade, nome_cidade, sigla_estado) VALUES (00006, 'SALVADOR', 'BA');


-- endereço

INSERT INTO endereco (cep, complemento, numero, logradouro, id_cidade) VALUES (14528125, 'Bloco B', 520, 'Rua vadico', 00001);
INSERT INTO endereco (cep, complemento, numero, logradouro, id_cidade) VALUES (32014852, 'Igreja', 893, 'Rua São leopoldo', 00002);
INSERT INTO endereco (cep, complemento, numero, logradouro, id_cidade) VALUES (36541202, 'Bloco A', 100, 'Rua General Osorio', 00003);
INSERT INTO endereco (cep, complemento, numero, logradouro, id_cidade) VALUES (69844528, 'Bloco A', 200, 'Rua Alcantara machado', 00004);
INSERT INTO endereco (cep, complemento, numero, logradouro, id_cidade) VALUES (74258485, 'Praça Principal', 520, 'Av Brasil', 00005);
INSERT INTO endereco (cep, complemento, numero, logradouro, id_cidade) VALUES (14131454, 'Bloco B', 455, 'Av Paulista', 00006);

--filial

INSERT INTO filial (cnpj, endereco_filial, nome_filial, tel_filial) VALUES (785965214001, 'Av paes de barros', 'YouSpeak São Paulo', 32292541);
INSERT INTO filial (cnpj, endereco_filial, nome_filial, tel_filial) VALUES (547852148055, 'Av Brasil', 'YouSpeak Curitiba', 56445213);
INSERT INTO filial (cnpj, endereco_filial, nome_filial, tel_filial) VALUES (365214785014, 'Praça matriz', 'YouSpeak Campo Grande', 41252638);
INSERT INTO filial (cnpj, endereco_filial, nome_filial, tel_filial) VALUES (963254178352, 'Rua Copacabana', 'YouSpeak Rio de Janeiro', 11165333);
INSERT INTO filial (cnpj, endereco_filial, nome_filial, tel_filial) VALUES (963254125897, 'Rua 7 de setenbro', 'YouSpeak Vitória', 96325418);
INSERT INTO filial (cnpj, endereco_filial, nome_filial, tel_filial) VALUES (785965214998, 'Av Salvador', 'YouSpeak Salvador', 85214587);

--setor

INSERT INTO setor (id_setor, nome_setor, cnpj) VALUES (01, 'Pedagógico', 785965214001);
INSERT INTO setor (id_setor, nome_setor, cnpj) VALUES (02, 'Recursos Humanos', 785965214001);
INSERT INTO setor (id_setor, nome_setor, cnpj) VALUES (03, 'Financeiro', 785965214001);
INSERT INTO setor (id_setor, nome_setor, cnpj) VALUES (04, 'Vendas', 785965214001);

--cargos

INSERT INTO cargos (id_cargo, nome_cargo, id_setor) VALUES (001, 'Professor', 01);
INSERT INTO cargos (id_cargo, nome_cargo, id_setor) VALUES (002, 'Analista de RH', 02);
INSERT INTO cargos (id_cargo, nome_cargo, id_setor) VALUES (003, 'Analista financeiro', 03);
INSERT INTO cargos (id_cargo, nome_cargo, id_setor) VALUES (004, 'Consultor Comercial', 04);

--idioma

INSERT INTO idiomas (sigla_idioma, nome_idioma) VALUES ('Ing', 'Inglês');
INSERT INTO idiomas (sigla_idioma, nome_idioma) VALUES ('Esp', 'Espanhol');
INSERT INTO idiomas (sigla_idioma, nome_idioma) VALUES ('Ita', 'Italiano');
INSERT INTO idiomas (sigla_idioma, nome_idioma) VALUES ('Fra', 'Francês');

-- Mensalidade

INSERT INTO mensalidade (id_mensalidade, valor, descricao, id_aluno) VALUES (001, 250, 'Mensalidade Janeiro',1);
INSERT INTO mensalidade (id_mensalidade, valor, descricao, id_aluno) VALUES (002, 280, 'Mensalidade Janeiro',2);
INSERT INTO mensalidade (id_mensalidade, valor, descricao, id_aluno) VALUES (003, 350, 'Mensalidade Fevereiro',1);
INSERT INTO mensalidade (id_mensalidade, valor, descricao, id_aluno) VALUES (004, 320, 'Mensalidade Dezembro',5);

-- frequencia 

INSERT INTO frequencia (id_frequencia, tipo_frequencia) VALUES (0001, '2x');
INSERT INTO frequencia (id_frequencia, tipo_frequencia) VALUES (0002, '1x');
INSERT INTO frequencia (id_frequencia, tipo_frequencia) VALUES (0003, '3x');


-- modalidade

INSERT INTO modalidade (sigla, nome_modalidade) VALUES ('P', 'Presencial');
INSERT INTO modalidade (sigla, nome_modalidade) VALUES ('O', 'Online');
INSERT INTO modalidade (sigla, nome_modalidade) VALUES ('H', 'Híbrida');

-- forma de pagamento

INSERT INTO forma_pgto (id_forma_pgto, nome_forma_pgto) VALUES (001, 'Dinheiro');
INSERT INTO forma_pgto (id_forma_pgto, nome_forma_pgto) VALUES (002, 'Cartão de Débito');
INSERT INTO forma_pgto (id_forma_pgto, nome_forma_pgto) VALUES (003, 'Cartão de Credito');
INSERT INTO forma_pgto (id_forma_pgto, nome_forma_pgto) VALUES (004, 'Boleto');
INSERT INTO forma_pgto (id_forma_pgto, nome_forma_pgto) VALUES (005, 'Pix');


-- funcionarios

INSERT INTO funcionarios (cpf_func, data_contratacao, data_nasc, endereco, nome_func, num_carteira_trab, gen_func, id_setor, telefone, id_tipo_contrato) VALUES
(41236598754, CONVERT ("2019-01-09",DATE), CONVERT ("1985-03-11",DATE),'Rua 15', 'Marcos Ferreira', 25417896, 'M', 01, 985236547,001);
INSERT INTO funcionarios (cpf_func, data_contratacao, data_nasc, endereco, nome_func, num_carteira_trab, gen_func, id_setor, telefone, id_tipo_contrato) VALUES
(36587412545, CONVERT ("2019-03-20",DATE), CONVERT ("1990-01-07",DATE),'Rua 20', 'Ana Luisa Melo', 25417896, 'F', 02, 985514654,002);
INSERT INTO funcionarios (cpf_func, data_contratacao, data_nasc, endereco, nome_func, num_carteira_trab, gen_func, id_setor, telefone, id_tipo_contrato) VALUES
(96325487892, CONVERT ("2019-02-27",DATE), CONVERT ("1979-09-12",DATE),'Rua 03', 'Rafael Santos', 25417896, 'M', 03, 983543456,003);
INSERT INTO funcionarios (cpf_func, data_contratacao, data_nasc, endereco, nome_func, num_carteira_trab, gen_func, id_setor, telefone, id_tipo_contrato) VALUES
(96325874125, CONVERT ("2019-05-18",DATE), CONVERT ("1982-09-25",DATE),'Rua 10', 'Higor Costa', NULL, 'M', 04, 988542545, 004);


-- tipo contrato

INSERT INTO tipo_contrato (id_tipo_contrato, nome_contrato) VALUES (001, 'Efetivo');
INSERT INTO tipo_contrato (id_tipo_contrato, nome_contrato) VALUES (002, 'Temporario');
INSERT INTO tipo_contrato (id_tipo_contrato, nome_contrato) VALUES (003, 'Horista');
INSERT INTO tipo_contrato (id_tipo_contrato, nome_contrato) VALUES (004, 'Pessoa Jurídica');


-- interessados

INSERT INTO interessado (id_interessado, nome_interessado, telefone_interessado, sigla_idioma) VALUES (000001, 'Filipe', 998308767, 'Ing');
INSERT INTO interessado (id_interessado, nome_interessado, telefone_interessado, sigla_idioma) VALUES (000002, 'Ana', 999154254, 'Esp');
INSERT INTO interessado (id_interessado, nome_interessado, telefone_interessado, sigla_idioma) VALUES (000003, 'Afonso de Deus', 9974563258, 'Ita');
INSERT INTO interessado (id_interessado, nome_interessado, telefone_interessado, sigla_idioma) VALUES (000004, 'Sueli', 998308547, 'Fra');

-- aluno

INSERT INTO aluno (id_aluno, cpf, nome_aluno, genero, id_con, data_nasc, cpf_resp, cep) VALUES 
(00001, 2589631472, 'Artur Aparecido', 'M', 001, CONVERT ("2008-05-15",DATE),4123034780, 14528125);
INSERT INTO aluno (id_aluno, cpf, nome_aluno, genero, id_con, data_nasc, cpf_resp, cep) VALUES 
(00002, 8521456328, 'Afonso de Deus', 'M', 002, CONVERT ("2002'-06-15",DATE),  NULL, 32014852);
INSERT INTO aluno (id_aluno, cpf, nome_aluno, genero, id_con, data_nasc, cpf_resp, cep) VALUES 
(00003, 3652145845, 'Melina Francine', 'F', 003, CONVERT ("1995-05-11",DATE),NULL , 36541202);
INSERT INTO aluno (id_aluno, cpf, nome_aluno, genero, id_con, data_nasc, cpf_resp, cep) VALUES 
(00004, 4521478965, 'Ana Karina', 'F', 004, CONVERT ("1987-05-1",DATE),NULL, 69844528);
INSERT INTO aluno (id_aluno, cpf, nome_aluno, genero, id_con, data_nasc, cpf_resp, cep) VALUES 
(00005, 3847596325, 'João silva', 'M', 005, CONVERT ("2000-11-13",DATE),NULL , 74258485);



--chamada

INSERT INTO chamada (id_aula, id_aluno, id_turma, presenca) VALUES (CONVERT ("2022-01-30",DATE),001, 002,1);
INSERT INTO chamada (id_aula, id_aluno, id_turma, presenca) VALUES (CONVERT ("2022-01-29",DATE),002, 001,0);
INSERT INTO chamada (id_aula, id_aluno, id_turma, presenca) VALUES (CONVERT ("2022-01-28",DATE),001, 004,0);
INSERT INTO chamada (id_aula, id_aluno, id_turma, presenca) VALUES (CONVERT ("2022-01-25",DATE),004, 002,1);


-- produtos

INSERT INTO produtos (id_produto, valor_produto, descricao, nome_produto, estoque) VALUES(001, 199.90, 'Livro Iniciante', 'livro', 25);
INSERT INTO produtos (id_produto, valor_produto, descricao, nome_produto, estoque) VALUES(002, 199.90, 'Livro Iniciante B', 'livro', 10);
INSERT INTO produtos (id_produto, valor_produto, descricao, nome_produto, estoque) VALUES(003, 299.90, 'Livro Intermediario', 'livro', 5);
INSERT INTO produtos (id_produto, valor_produto, descricao, nome_produto, estoque) VALUES(004, 199.90, 'Livro Intermediario B', 'livro', 50);
INSERT INTO produtos (id_produto, valor_produto, descricao, nome_produto, estoque) VALUES(005, 399.90, 'Livro Avançado', 'livro', 5);

-- venda produtos

INSERT INTO venda_prod (id_venda, cnpj, id_produto, valor_produto, quantidade, id_aluno) VALUES 
(001, 785965214001, 001, 199.90, 2, 00001);
INSERT INTO venda_prod (id_venda, cnpj, id_produto, valor_produto, quantidade, id_aluno) VALUES 
(002, 785965214001, 002, 199.90, 1, 00002);
INSERT INTO venda_prod (id_venda, cnpj, id_produto, valor_produto, quantidade, id_aluno) VALUES 
(003, 785965214001, 004, 199.90, 1, 00003);
INSERT INTO venda_prod (id_venda, cnpj, id_produto, valor_produto, quantidade, id_aluno) VALUES 
(004, 785965214001, 003, 299.90, 3, 00004);
INSERT INTO venda_prod (id_venda, cnpj, id_produto, valor_produto, quantidade, id_aluno) VALUES 
(005, 785965214001, 005, 399.90, 1, 00005);

--pagamento

INSERT INTO pagamento (data_hora, id_forma_pgto, id_mensalidade, id_venda) VALUES ( CONVERT("2022-01-20 17:18:54",  DATETIME), 001, 001, NULL);
INSERT INTO pagamento (data_hora, id_forma_pgto, id_mensalidade, id_venda) VALUES ( CONVERT("2019-03-20 12:08:15",  DATETIME), 002, NULL, 002);
INSERT INTO pagamento (data_hora, id_forma_pgto, id_mensalidade, id_venda) VALUES ( CONVERT("2019-04-20 09:45:01",  DATETIME), 003, NULL, 003);
INSERT INTO pagamento (data_hora, id_forma_pgto, id_mensalidade, id_venda) VALUES ( CONVERT("2022-01-05 23:07:48",  DATETIME), 004, 004, NULL);

--salas

INSERT INTO salas (id_sala, nome_sala, capacidade, horarios, cnpj) VALUES (001, '785-one', 10, NULL, 785965214001);
INSERT INTO salas (id_sala, nome_sala, capacidade, horarios, cnpj) VALUES (002, '785-two', 8, NULL, 785965214001);
INSERT INTO salas (id_sala, nome_sala, capacidade, horarios, cnpj) VALUES (003, '785-three', 12, NULL, 785965214001);
INSERT INTO salas (id_sala, nome_sala, capacidade, horarios, cnpj) VALUES (004, '785-four', 7, NULL, 785965214001);

--turma

INSERT INTO turma (id_turma, nome_turma, id_frequencia, sigla_idioma, sigla_mod, id_sala) VALUES   
(001, '785-Bruna', 0001, 'Ing', 'P', 001 );
INSERT INTO turma (id_turma, nome_turma, id_frequencia, sigla_idioma, sigla_mod, id_sala) VALUES
(002, '785-Francisco', 0002, 'Ing', 'O', 002 );
INSERT INTO turma (id_turma, nome_turma, id_frequencia, sigla_idioma, sigla_mod, id_sala) VALUES
(003, '785-Gabi', 0001, 'Esp', 'P', 004 );
INSERT INTO turma (id_turma, nome_turma, id_frequencia, sigla_idioma, sigla_mod, id_sala) VALUES
(004, '785-Tais', 0003, 'Ita', 'P', 003 );



--matricula

INSERT INTO matricula (id_matricula, id_turma, id_interessado, id_mensalidade, id_aluno, sigla_desc, id_nota) VALUES 
(001, 001, 000001, 001, 001, 'Uni', 1);
INSERT INTO matricula (id_matricula, id_turma, id_interessado, id_mensalidade, id_aluno, sigla_desc, id_nota) VALUES 
(002, 004, NULL, 001, 002, 'Fun', 2);
INSERT INTO matricula (id_matricula, id_turma, id_interessado, id_mensalidade, id_aluno, sigla_desc, id_nota) VALUES  
(003, 003, NULL, 001, 002, 'Emp', 2);
INSERT INTO matricula (id_matricula, id_turma, id_interessado, id_mensalidade, id_aluno, sigla_desc, id_nota) VALUES  
(004, 002, NULL, 001, 001, 'Uni', 1);
INSERT INTO matricula (id_matricula, id_turma, id_interessado, id_mensalidade, id_aluno, sigla_desc, id_nota) VALUES 
(005, 001, NULL, 001, 001, 'Uni', 1);

