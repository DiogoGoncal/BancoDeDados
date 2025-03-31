LOAD DATA LOCAL INFILE 'BancoDeDados/dados/1T2023.csv' -- tera que mudar o repositorio para o que for
INTO TABLE contabeis
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data, reg_ans, cd_conta_contabil, descricao, vl_saldo_inicial, vl_saldo_final);