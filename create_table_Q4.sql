/*CRIAÇÃO DE TABELAS*/
CREATE TABLE ALUNOS 
(
  ID    INTEGER,
  nome  VARCHAR2(60),    
  valor NUMBER
);

CREATE TABLE NOTAS
(    
  nota      INTEGER,
  valor_min NUMBER,
  valor_max NUMBER
);

/*EXECUÇÃO DE CARGA NAS TABELAS*/
BEGIN
  INSERT INTO ALUNOS(ID,nome,valor)VALUES(1,'Julia',88);
  INSERT INTO ALUNOS(ID,nome,valor)VALUES(2,'Carol',68);
  INSERT INTO ALUNOS(ID,nome,valor)VALUES(3,'Maria',99);
  INSERT INTO ALUNOS(ID,nome,valor)VALUES(4,'Andreia',78);
  INSERT INTO ALUNOS(ID,nome,valor)VALUES(5,'Jaqueline',63);
  INSERT INTO ALUNOS(ID,nome,valor)VALUES(6,'Marcela',81);
  COMMIT;
EXCEPTION
  WHEN OTHERS
    THEN RAISE_APPLICATION_ERROR(-20001, 'ERRO AO ATUALIZAR A TABELA: ALUNOS - ' || SQLCODE || SQLERRM);
END;

/*EXECUÇÃO DE CARGA NAS TABELAS*/
BEGIN
  INSERT INTO NOTAS(nota,valor_min,valor_max)VALUES(1,0,9);
  INSERT INTO NOTAS(nota,valor_min,valor_max)VALUES(2,10,19);
  INSERT INTO NOTAS(nota,valor_min,valor_max)VALUES(3,20,29);
  INSERT INTO NOTAS(nota,valor_min,valor_max)VALUES(4,30,39);
  INSERT INTO NOTAS(nota,valor_min,valor_max)VALUES(5,40,49);
  INSERT INTO NOTAS(nota,valor_min,valor_max)VALUES(6,50,59);
  INSERT INTO NOTAS(nota,valor_min,valor_max)VALUES(7,60,69);
  INSERT INTO NOTAS(nota,valor_min,valor_max)VALUES(8,70,79);
  INSERT INTO NOTAS(nota,valor_min,valor_max)VALUES(9,80,89);
  INSERT INTO NOTAS(nota,valor_min,valor_max)VALUES(10,90,100);
EXCEPTION
  WHEN OTHERS
    THEN RAISE_APPLICATION_ERROR(-20001, 'ERRO AO ATUALIZAR A TABELA: NOTAS - ' || SQLCODE || SQLERRM);
END;
