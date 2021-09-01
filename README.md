# BASE DE DATOS ORACLE EN DOCKER

## 1- CREAR IMAGEN
```
docker pull store/oracle/database-enterprise:12.2.0.1
```
## 2- CREAR CONTENEDOR
```
docker run -d -p 1521:1521 --name oracle store/oracle/database-enterprise:12.2.0.1
```

## 3- CONECTARSE DESDE CONSOLA
### 3.1  - Ingresar al contenedor 
```
docker exec -it <ID-Contenedor o nombre> bash -c "source /home/oracle/.bashrc; sqlplus /nolog"
```
### 3.2 - ingresar usuario dentro de la consola
```
connect sys as sysdba;  
```
-- dejar el password en blanco
```
alter session set "_ORACLE_SCRIPT"=true;
```
### 3.3 - crear usuario
```
create user <your-user> identified by <your-identify>;
```

### 3.4 -  otorgar permisos
```
GRANT ALL PRIVILEGES TO <your-user>;
```

## 4- Configure SQL client

 * Username: <your-user>
 * Password: <your-user>
 * Hostname: localhost
 * Port: 1521
 * Service name: ORCLCDB.localdomain

## 5- Otros comandos

#### usar contenedor por consola
```
docker exec -it  <container-id> /bin/bash   
```
#### detener contenedor
```
docker stop <container-id>
```
#### eliminar contenedor
```
docker rm <container-id>
```
#### eliminar imagen
```
docker rmi <container-id>
```
#### iniciar contenedor detenido
```
docker start <container-id> 
```
#### eliminar todos los objetos detenidos
```
docker system prune
```
#### eliminar todo
```
docker system prune -a   
```
