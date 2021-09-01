# BASE DE DATOS ORACLE EN DOCKER

## 1- CREAR IMAGEN
```sh
docker pull store/oracle/database-enterprise:12.2.0.1
```
## 2- CREAR CONTENEDOR
```sh
docker run -d -p 1521:1521 --name oracle store/oracle/database-enterprise:12.2.0.1
```

## 3- CONECTARSE DESDE CONSOLA
### 3.1  - Ingresar al contenedor 
```sh
docker exec -it <ID-Contenedor o nombre> bash -c "source /home/oracle/.bashrc; sqlplus /nolog"
```
### 3.2 - ingresar usuario dentro de la consola
```sh
connect sys as sysdba;  
```
`dejar el password en blanco`
```sh
alter session set "_ORACLE_SCRIPT"=true;
```
### 3.3 - crear usuario
```sh
create user <your-user> identified by <your-identify>;
```

### 3.4 -  otorgar permisos
```sh
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
```sh
docker exec -it  <container-id> /bin/bash   
```
#### detener contenedor
```sh
docker stop <container-id>
```
#### eliminar contenedor
```sh
docker rm <container-id>
```
#### eliminar imagen
```sh
docker rmi <container-id>
```
#### iniciar contenedor detenido
```sh
docker start <container-id> 
```
#### eliminar todos los objetos detenidos
```sh
docker system prune
```
#### eliminar todo
```sh
docker system prune -a   
```
