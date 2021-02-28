import os

POSTGRES_HOST=os.getenv("POSTGRES_HOST", "localhost")
POSTGRES_DATABASE=os.getenv("DATABASE", "school")
POSTGRES_USER=os.getenv("POSTGRES_USER", "michal")
POSTGRES_PASSWORD=os.getenv("POSTGRES_PASSWORD", "michal")

POSTGRES_CONNECTION_STRING=os.getenv("POSTGRES_CONNECTION_STRING", "dbname=school user=michal password=michal host=localhost port=5432")