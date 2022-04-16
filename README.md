# Docker files (tested on Windows 10)
 _Contains: python 3.10.2 alpine, Django 3.2.13_

## Project structure
- app/
- .dockerignore
- Dockerfile
- requirements.txt
- docker-compose.yml

"app/" directory may contains created Django project files.

To build an image and start a container run this commands:
```
docker build . 
docker-compose build 
```
If you do not have any Django project created, run:
```
docker-compose run app django-admin startproject example .
```
Where "example" - name of the Django project will be craeted in "app" directory.

Finally run the container.
```
docker-compose up
```
