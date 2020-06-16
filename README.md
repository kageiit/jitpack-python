# jitpack-python

A repo to create builds of python for jitpack build machines

Built using https://github.com/Infinidat/relocatable-python

# Build instructions
- Install Docker
- Run
```
docker-compose build
docker-compose up --no-start
docker cp python3:python3.tar.gz .
```
- Relocatable python archive is `python3.tar.gz`
