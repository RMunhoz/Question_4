/*EXECUÇÃO DO RELATÓRIO DE NOTAS*/

SET SERVEROUTPUT ON
SET VERIFY OFF
SELECT CASE
         WHEN nota < 8 
           THEN 'NULL'
         ELSE
           nome
       END nome
      ,nota
      ,valor        
  FROM (SELECT a.nome
              ,n.nota
              ,a.valor         
          FROM alunos a
              ,notas  n
         WHERE a.valor BETWEEN n.valor_min
                           AND n.valor_max
         ORDER BY 2 DESC,3);
  
