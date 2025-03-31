LOAD DATA LOCAL INFILE 'BancoDeDados/dados/Relatorio_cadop.csv' -- tera que mudar o repositorio para o que for nesse e proximos 
INTO TABLE operadora
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(Registro_ANS, CNPJ, Razao_Social, Nome_Fantasia, Modalidade, Logradouro, Numero, Complemento, Bairro, Cidade, UF, CEP, DDD, Telefone, Fax, Endereco_eletronico, Representante, Cargo_Representante, Regiao_de_Comercializacao, Data_Registro_ANS);
