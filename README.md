# Ansible + molecule 
## About Molecule
- https://molecule.readthedocs.io/en/latest/ 
## Prepaire
- Setup Docker
## Build
- Python3, Ansible-2.9.5 and molecule on Alpine3.11 
```
$ docker build -t ansible295:v1 .
```
## Run
```
$ docker image list
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
ansible295          v1                  10a65ee90339        14 seconds ago      626MB

$ docker run -it ansible295:v1  /bin/sh
/ansible # ansible --version
ansible 2.9.5
/ansible # molecule --help
Usage: molecule [OPTIONS] COMMAND [ARGS]...

   _____     _             _
  |     |___| |___ ___ _ _| |___
  | | | | . | | -_|  _| | | | -_|
  |_|_|_|___|_|___|___|___|_|___|

  Molecule aids in the development and testing of Ansible roles.

```
