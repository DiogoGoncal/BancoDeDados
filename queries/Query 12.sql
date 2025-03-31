LOAD DATA LOCAL INFILE 'BancoDeDados/dados/3T2024.csv'
INTO TABLE contabeis
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(data, reg_ans, cd_conta_contabil, descricao, vl_saldo_inicial, vl_saldo_final);