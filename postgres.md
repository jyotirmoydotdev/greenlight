# Postgres Note 

## Create docker container with Postgres

```bash
docker run -d \
    --name postgres \
    -e POSTGRES_USER=postres \
    -e POSTGRES_PASSWORD=postgres \
    -e POSTGRES_DB=postgres \
    -p 5432:5432 \
    -v postgres_data:/var/lib/postgresql \
    postgres
```

## Connect to a postgresql 

`docker exec -it postgres psql -U postgres`

`docker exec -it postgres psql -U greenlight -d greenlight`

## Create databse

`create database greenlight;`

## Create role

`create role greenlight with login password 'pa55word';`

## Create Extension

`create extension if not exists citext;`

## Check the volume

`docker volume inspect postgres_data`
