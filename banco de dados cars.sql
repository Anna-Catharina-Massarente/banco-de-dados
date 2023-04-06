CREATE DATABASE cars;
USE cars;
CREATE TABLE Marcas  (
      id INT NOT NULL AUTO_INCREMENT,
      nome_marca VARCHAR (255) NOT NULL,
      PRIMARY KEY (id)
);

ALTER TABLE Marcas ADD origem VARCHAR (255);

CREATE TABLE inventario (
     id INT NOT NULL AUTO_INCREMENT,
     modelo VARCHAR (255) NOT NULL,
     transmissao VARCHAR (255) NOT NULL,
     motor VARCHAR (255) NOT NULL,
     combustivel VARCHAR (255) NOT NULL,
     Marcas_id INT NOT NULL,
     PRIMARY KEY (id),
     FOREIGN KEY (Marcas_id) REFERENCES Marcas (id)
);

CREATE TABLE clientes (
	 id INT NOT NULL AUTO_INCREMENT,
     nome VARCHAR (255) NOT NULL,
     sobrenome VARCHAR (255) NOT NULL,
     endereco VARCHAR (255) NOT NULL,  
     PRIMARY KEY (id)
);

INSERT INTO clientes (nome, sobrenome, endereco)
VALUES
    ('Anna', 'Massarente', 'Rua 1'),
    ('Thiago', 'Goncalves', 'Rua 2'),
    ('Solange', 'Forte', 'Rua 3'),
    ('Vera', 'Santana', 'Rua 4'),
    ('Maria', 'Santos', 'Rua 5');
    
    
    INSERT INTO Marcas (nome_marca, origem)
    VALUES
       ('BMW', 'Alemanha'),
       ('Fiat', 'Italia'),
       ('Mercedes - benz', 'Alemanha'),
       ('Renault', 'Franca'),
       ('Jaguar', 'Inglaterra');
       
       
	INSERT INTO inventario (
    modelo,
    transmissao,
    motor,
    combustivel,
    Marcas_id
    )
    
    VALUES
      ('BMW 218', 'automatica', '2.0', 'gasolina', 1),
      ('XE 2.0D', 'manual', '2.0', 'diesel', 5),
      ('UNO', 'manual', '1.0', 'etanol', 2),
      ('GLS 450', 'automatica', '3.0', 'gasolina', 3),
      ('KWID', 'manual', '1.6', 'flex', 4);

