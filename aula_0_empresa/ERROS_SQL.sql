/*PARA RESOLVER ESSE ERRO É PRECISO MODIFICAR A COLUNA SALARIO PARA NUMBER(6,2)*/ 
/*(6,2) SÃO 6 NÚMEROS, COM 4 ANTES DA VÍRGULA E 2 DEPOIS DA VÍRGULA*/
Erro a partir da linha : 1 no comando -
INSERT INTO EMPREGADO(NUM_EMP,NAME_EMP,JOB,MGR,HIREDATE,SALARIO,COMISSAO,DEPTNUM)
VALUES(7369, 'SMITH', 'CLERK', 7902, '17/02/80', 5000, 02, 20)
Relatório de erros -
ORA-01438: valor maior que a precisão especificada usado para esta coluna

/*MODIFICANDO A PRECISAO DA COLUNA SALARIO*/
ALTER TABLE "SYSTEM"."EMPREGADO" MODIFY SALARIO NUMBER(6,2);
ALTER TABLE EMPREGADO MODIFY SALARIO NUMBER(6,2);

=================================================================================================

/*PARA RESOLVER ESSE ERRO É PRECISO MODIFICAR A COLUNA COMISSAO PARA NUMBER(6,2)*/
/*(6,2) SÃO 6 NÚMEROS, COM 4 ANTES DA VÍRGULA E 2 DEPOIS DA VÍRGULA*/
Erro a partir da linha : 38 no comando -
INSERT INTO EMPREGADO(NUM_EMP,NAME_EMP,JOB,MGR,HIREDATE,SALARIO,COMISSAO,DEPTNUM)
VALUES(7654, 'MARTIN', 'SALARIOESMAN', 7698, '28/09/81', 5000, 1400, 30)
Relatório de erros -
ORA-01438: valor maior que a precisão especificada usado para esta coluna

/*MODIFICANDO A PRECISÃO DA COLUNA COMISSÃO*/
ALTER TABLE "SYSTEM"."EMPREGADO" MODIFY COMISSAO NUMBER(6,2);
ALTER TABLE EMPREGADO MODIFY COMISSAO NUMBER(6,2);

=================================================================================================

/*PARA MODIFICAR A COLUNA ELA DEVE ESTAR VAZIA*/
Erro a partir da linha : 13 no comando -
ALTER TABLE "SYSTEM"."EMPREGADO" MODIFY SALARIO NUMBER(6,2)
Relatório de erros -
ORA-01440: a coluna a ser modificada deve estar vazia para diminuir a precisão ou escala
01440. 00000 -  "column to be modified must be empty to decrease precision or scale"
*Cause:    
*Action:

=================================================================================================

SQL> INSERT INTO EMPREGADO(NUM_EMP, NAME_EMP, JOB, MGR, HIREDATE, SALARIO, DEPTNUM, COMISSAO)
  2  VALUES(NULL, 'CARLOS', 'CONSULTOR', 8898, SYSDATE, 3220, 130, 20)
  3  /
VALUES(NULL, 'CARLOS', 'CONSULTOR', 8898, SYSDATE, 3220, 130, 20)
       *
ERRO na linha 2:
ORA-01400: não é possível inserir NULL em ("SYSTEM"."EMPREGADO"."NUM_EMP")

==================================================================================================

SQL> SELECT JOB, AVG(SALARIO) FROM EMPREGADO
  2  /
SELECT JOB, AVG(SALARIO) FROM EMPREGADO
       *
ERRO na linha 1:
ORA-00937: nÒo Ú uma funþÒo de grupo de grupo simples

SQL> SELECT JOB, AVG(SALARIO) FROM EMPREGADO GROUP BY JOB;

==================================================================================================

SQL> SELECT JOB, SALARIO, AVG(SALARIO) FROM EMPREGADO
  2  GROUP BY JOB;
SELECT JOB, SALARIO, AVG(SALARIO) FROM EMPREGADO
            *
ERRO na linha 1:
ORA-00979: nÒo Ú uma expressÒo GROUP BY

==================================================================================================

SQL> SELECT JOB, AVG(SALARIO) FROM EMPREGADO
  2  /
SELECT JOB, AVG(SALARIO) FROM EMPREGADO
       *
ERRO na linha 1:
ORA-00937: nÒo Ú uma funþÒo de grupo de grupo simples

==================================================================================================

