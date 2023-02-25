-- Criar o banco de dados
CREATE DATABASE IF NOT EXISTS cancelaCondominio;
-- Selecionar o banco de dados
USE cancelaCondominio;

-- Criar a tabela tipoPessoa
CREATE TABLE IF NOT EXISTS tipoPessoa (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  tipo VARCHAR(50) NOT NULL
);

-- Criar a tabela pessoa
CREATE TABLE IF NOT EXISTS pessoa (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  placa VARCHAR(10) NOT NULL,
  cpf VARCHAR(11) NOT NULL,
  bloco VARCHAR(10) DEFAULT NULL,
  logradouro VARCHAR(200) DEFAULT NULL,
  tipo INT NOT NULL,
  idRPFI INT,
  FOREIGN KEY (tipo) REFERENCES tipoPessoa(id)
);

-- Inserir tipos de pessoa
INSERT INTO tipoPessoa (tipo) VALUES
  ('Morador'),
  ('Visitante'),
  ('Funcionário');

-- Inserir pessoas
INSERT INTO pessoa (nome, placa, cpf, bloco, logradouro, tipo, idRPFI) VALUES
  ('João Silva', 'ABC-1234', '12345678901', 'B1', 'Rua A', 1, 1),
  ('Maria Souza', 'DEF-5678', '23456789012', NULL, 'Avenida B', 2, 2),
  ('Pedro Santos', 'GHI-9012', '34567890123', 'C3', NULL, 1, 3),
  ('Ana Lima', 'JKL-3456', '45678901234', NULL, NULL, 3, 4),
  ('Lucas Oliveira', 'MNO-7890', '56789012345', 'A2', 'Rua C', 1, 5),
  ('Carla Rocha', 'PQR-2345', '67890123456', NULL, 'Avenida D', 2, 6);
 
 
