--CREAR TABLAS
CREATE TABLE departamentos (
    deptno number,
    departamento VARCHAR2(50) NOT NULL,
    descripcion VARCHAR2(50) NOT NULL,
    ubicacion VARCHAR2(50) NOT NULL,
    CONSTRAINT pk_departamentos PRIMARY KEY (deptno)
);

CREATE TABLE empleados (
empno NUMBER,
nombre VARCHAR2(50) NOT NULL,
cargo VARCHAR2(50),
jefe NUMBER,
fe_ini DATE,
salario NUMBER(7,2),
deptno NUMBER,
CONSTRAINT pk_empleados PRIMARY KEY (empno),
CONSTRAINT fk_empleados_deptno FOREIGN KEY (deptno)
REFERENCES departamentos (deptno)
);

--DESCRIBIR TABLAS
DESCRIBE departamentos;
DESCRIBE empleados;

--ALTER PARA ADICIONAR CAMPOS
Alter TABLE  empleados add (direccion VARCHAR2 (50));

--ELIMINAR TABLA
DROP TABLE departamento2;

--insert
INSERT INTO departamentos (depno,departamento,descripcion,ubicacion)
VALUES (10, 'INV','INVENTARIO','MEDELLIN');