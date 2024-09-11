USE VENDAS;

CREATE TABLE `vendas`.`duplicata` (
  `nome` CHAR(40) NOT NULL,
  `numero` INT NOT NULL,
  `valor` DECIMAL(10,2) NULL,
  `vencimento` DATE NULL,
  `Banco` CHAR(40) NULL,
  PRIMARY KEY (`numero`));
  
  ALTER TABLE `vendas`.`duplicata` 
CHANGE COLUMN `Banco` `Banco` CHAR(50) NULL DEFAULT NULL ;

  INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('abc papelaria', 100100, 5000.00, '2017-01-20', 'itau'),
('livraria fernandes', 100110, 2500.00, '2017-01-22', 'itau'),
('livraria fernandes', 100120, 1500.00, '2016-10-15', 'bradesco'),
('abc papelaria', 100130, 8000.00, '2016-10-15', 'santander'),
('ler e saber',  200120, 10500.00, '2018-04-26', 'banco do brasil'),
('LIVROS E CIA', 200125, 2000.00, '2018-04-26', 'BANCO DO BRASIL'),
('LER E SABER', 200130, 11000.00, '2018-09-26', 'ITAU'),
('PAPELARIA SILVA', 250350, 1500.00, '2018-01-26', 'BRADESCO'),
('LIVROS MM', 250360, 500.00, '2018-12-18', 'SANTANDER'),
('LIVROS MM', 250370, 3400.00, '2018-04-26', 'SANTANDER'),
('PAPELARIA SILVA', 250380, 3500.00, '2018-04-26', 'BANCO DO BRASIL'),
('LIVROS E CIA', 453360, 1500.00, '2018-06-15', 'ITAU'),
('LIVROS MM', 453365, 5400.00, '2018-06-15', 'BRADESCO'),
('PAPELARIA SILVA', 453370, 2350.00, '2017-12-27', 'ITAU'),
('LIVROS E CIA', 453380, 1550.00, '2017-12-27', 'BANCO DO BRASIL'),
('ABC PAPELARIA', 980130, 4000.00, '2016-12-11', 'ITAU'),
('LIVRARIA FERNANDES', 770710, 2500.00, '2016-11-15', 'SANTANDER');

ALTER TABLE duplicata RENAME column BANCO TO banco;

INSERT INTO duplicata (Nome, Numero, Valor, Vencimento, Banco)
values ('abc papelaria', 100100, 5000.00,'2017/01/20','itau');

INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('ler e saber', 200120, 10500.00, '2018/04/26', 'banco do brasil');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('ler e cia', 200125, 2000.00, '2018/04/26', 'banco do brasil');

UPDATE duplicata
SET Nome = 'livros e cia'
WHERE Numero = 200125;

INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('ler e saber', 200130, 11000.00, '2018/09/26', 'itau');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('papelaria silva', 250350, 1500.00, '2018/01/26', 'bradesco');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('livros mm', 250360, 500.00, '2018/12/18', 'santander');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('livros mm', 250370, 3400.00, '2018/04/26', 'santander');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('papelaria silva', 250380, 3500.00, '2018/04/26', 'banco do brasil');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('livros e cia', 453360, 1500.00, '2018/06/15', 'itau');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('livros mm', 453365, 5400.00, '2018/06/15', 'bradesco');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('papelaria silva', 453370, 2350.00, '2017/12/27', 'itau');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('livros e cia', 453380, 1550.00, '2017/12/27', 'banco do brasil');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('abc papelaria', 980130, 4000.00, '2016/12/11', 'itau');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('papel e afins', 985502, 2500.00, '2016/03/12', 'itau');




INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('ler e saber', 888132, 2500.00, '2017/03/05', 'itau');

USE vendas;
UPDATE duplicata
SET Banco = 'santander'
WHERE Numero = 985002;

DELETE FROM duplicata
WHERE Numero = 888132;
DELETE FROM duplicata
WHERE Numero = 985001;
DELETE FROM duplicata
WHERE Numero = 985502;

INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('abc papelaria', 980130, 4000.00, '2016/12/11', 'itau');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('livraria fernandes', 770710, 2500.00, '2016/11/15', 'santander');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('abc papelaria', 985001, 3000.00, '2016/09/11', 'itau');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('papel e afins', 985002, 2500.00, '2016/03/12', 'santander');
INSERT INTO duplicata(Nome, Numero, Valor, Vencimento, Banco) 
VALUES('ler e saber', 888132, 2500.00, '2017/03/05', 'itau');

SELECT * FROM duplicata;
SELECT COUNT(*) FROM duplicata;
use vendas;

SELECT * FROM duplicata;

SELECT numero FROM duplicata WHERE banco='itau';

SELECT COUNT(*) FROM duplicata WHERE banco='itau';

SELECT numero, vencimento, valor, nome FROM duplicata WHERE EXTRACT(YEAR FROM vencimento) = '2017';

SELECT numero, vencimento, valor, nome FROM duplicata WHERE NOT banco='itau' AND banco='santander';

SELECT SUM(valor) FROM duplicata WHERE nome='livraria silva';
SELECT numero FROM duplicata WHERE nome='livraria silva';

DELETE FROM duplicata WHERE numero='770710' AND nome='livraria fernandes';

SELECT * FROM duplicata ORDER BY nome;

SELECT nome,banco,valor,vencimento FROM duplicata ORDER BY vencimento;

UPDATE duplicata SET banco='santander' WHERE banco='banco do brasil';

SELECT * FROM duplicata WHERE banco='bradesco';

SELECT SUM(valor) FROM duplicata WHERE vencimento BETWEEN '20160101' AND '20161231';

SELECT SUM(valor) FROM duplicata WHERE vencimento BETWEEN '20160801' AND '20160830';

SELECT * FROM duplicata WHERE nome='abc papelaria';

SELECT valor,(valor *0.15) AS multa FROM duplicatas WHERE vencimento BETWEEN '20160101' AND '20161231';

SELECT valor,(valor *0.05) AS multa FROM duplicatas WHERE vencimento BETWEEN '20170101' AND '20170531';

SELECT (SUM(valor)/COUNT(*)) AS media FROM duplicata WHERE EXTRACT(YEAR FROM vencimento) ='2016';

SELECT numero,nome FROM duplicata WHERE valor >= 10000;

SELECT SUM(valor) FROM duplicata WHERE banco='santander';

SELECT * FROM duplicata WHERE banco='itau' OR banco='bradesco';

