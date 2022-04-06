# boilerplates
Templates and configurations for various projects and deployment scenarios


## Pre

create docker network first. 

```
docker network create -d bridge \
  --subnet=10.99.0.0/16 \
  --ip-range=10.99.1.0/24 \
  --gateway=10.99.1.254 \
  br0
```