CREATE DATABASE rh_empresa1;

CREATE TABLE colaboradores (
    id BIGINT AUTO_INCREMENT,
    nome_completo VARCHAR(150) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    data_admissao DATE NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    departamento VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO colaboradores (nome_completo, cargo, data_admissao, salario, departamento)
VALUES
('Julia Lima', 'Analista de Recursos Humanos', '2022-05-10', 1900, 'Recursos Humanos'),
('Carlos Eduardo', 'Desenvolvedor de Software', '2023-01-15', 5500.00, 'Tecnologia'),
('Lucas Casotti', 'Gerente de Projetos', '2021-08-01', 8500.00, 'Gestão de Projetos'),
('Yuri', 'Auxiliar Administrativo', '2020-03-25', 1200.00, 'Administração'),
('Felipe ', 'Especialista em Marketing', '2024-07-20', 4500.00, 'Marketing'); 

SELECT * FROM colaboradores WHERE salario > 2000.00; 

SELECT * FROM colaboradores WHERE salario < 2000.00; 

UPDATE colaboradores SET salario = 2300.00 WHERE id = 4; 

SELECT * FROM colaboradores;