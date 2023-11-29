CREATE TABLE cliente(
	ID SERIAL PRIMARY KEY,
	cpf VARCHAR(20) ,
	nome VARCHAR (100) NOT NULL,
	email VARCHAR (50) NOT NULL UNIQUE,
	telefone VARCHAR (50) NOT NULL,
	endereco VARCHAR(100) NOT NULL
);
CREATE TABLE Produto(
	ID SERIAL PRIMARY KEY,
	nome VARCHAR (100) NOT NULL,
	preco DECIMAL (10,2) NOT NULL,
	descricao VARCHAR (100) NOT NULL,
	categoria INT NOT NULL,
	Estoque INT 
);
CREATE TABLE funcionario(
	ID SERIAL PRIMARY KEY,
	nome VARCHAR (100) NOT NULL,
	cargo VARCHAR (50) NOT NULL,
	email VARCHAR (50) NOT NULL UNIQUE,
	telefone VARCHAR (50) NOT NULL,
	endereco VARCHAR(100) NOT NULL,
	salario INT NOT NULL
);
CREATE TABLE pedido(
	ID SERIAL PRIMARY KEY,
	id_funcionario INTEGER NOT NULL,
	FOREIGN KEY (id_funcionario) REFERENCES funcionario(id),
	id_cliente INTEGER NOT NULL,
	FOREIGN KEY (id_cliente) REFERENCES cliente(ID),
	id_produto INTEGER NOT NULL,
	FOREIGN KEY (id_produto) REFERENCES Produto(ID),
	preco DECIMAL (10,2) NOT NULL
);

INSERT INTO cliente (cpf,nome,email,telefone,endereco) VALUES 
('25689746851','Larissa','Lary@hotmail.com','965983245','rua ambrosio miranda N30'),
('96857412365','Amanda','amnds@hotmail.com','589683245','rua das dores N34'),
('54789632145','Jessica','jessica@hotmail.com','203283245','rua dos anjos N38'),
('96325875163','Thays','thays@hotmail.com','985583245','rua noiva N40');

INSERT INTO produto (nome,preco,descricao,categoria,estoque) VALUES
('brinco',8.0,'brinco banhado',1,50),
('anel',7.0,'anel de prata',2,60),
('cordao',8.2,'cordao de prata',3,70),
('pulseira',5.0,'pulseira de miçanga',4,80);

INSERT INTO funcionario (nome,cargo,email,telefone,endereco,salario) VALUES
('Jorge','vendedor','jorge@hotmail.com','988556589','rua doida',1200),
('luana','vendedora','Luana@hotmail.com','965329865','rua louca',1400),
('liandra','vendedora','liandra@hotmail.com','956874596','todas as ruas',1200),
('Higor','supervisor','higor@hotmail.com','985653521','rua das dores',1800);

INSERT INTO pedido (id_funcionario,id_cliente,id_produto,preco) VALUES
(1,2,1,70.25),
(2,1,2,50.25),
(3,3,4,30.25),
(1,4,3,20.25);