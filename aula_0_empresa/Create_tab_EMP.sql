create table empregado
(
    empno number(4) constraint Emp_empno_pk primary key,
    ename varchar2(10),
    job varchar2(9),
    mgr number(4),
    hiredate date,
    sal number(7,2),
    comm number(7,2),
    deptno number(2) CONSTRAINT Emp_Dept_DeptNo_FK References dept(deptno)
);

CREATE TABLE EMPREGADO
(
    NUM_EMP NUMBER(4) CONSTRAINT EMP_NUMEMP_PK PRIMARY KEY,
    NAME_EMP VARCHAR2(40),
    JOB VARCHAR2(20),
    MGR NUMBER(4),
    HIREDATE DATE,
    SALARIO NUMBER(5,2),
    COMISSAO NUMBER(5,2),
    DEPTNUM NUMBER(3) CONSTRAINT EMP_DEPT_DEPTNUM_FK REFERENCES DEPARTAMENTO(DEPTNUM)
);