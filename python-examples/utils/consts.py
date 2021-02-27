import os

POSTGRES_HOST=os.getenv("POSTGRES_HOST", "localhost")
POSTGRES_DATABASE=os.getenv("DATABASE", "school")
POSTGRES_USER=os.getenv("POSTGRES_USER", "michal")
POSTGRES_PASSWORD=os.getenv("POSTGRES_PASSWORD", "michal")