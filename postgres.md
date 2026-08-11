# Postgres Note 

## Create docker container with Postgres

```bash
docker run -d \
    --name postgres \
    -e POSTGRES_USER=postres \
    -e POSTGRES_PASSWORD=postgres \
    -e POSTGRES_DB=postgres \
    -p 5432:5432 \
    -v postgres_data:/var/lib/postgresql/data \
    postgres
```

## Check the volume

`docker volume inspect postgres_data`
