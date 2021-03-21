import os

from utils.postgres_handler import PostgresHandler

pg_handler=PostgresHandler(
    host=os.getenv("POSTGRES_HOST", "localhost"),
    database=os.getenv("POSTGRES_DATABASE", "school"),
    user=os.getenv("POSTGRES_USER", "michal"),
    password=os.getenv("POSTGRES_PASSWORD", "michal"),
)

if __name__ == "__main__":
    pg_handler.insert_data("student", {
        "name": "test_student",
        "surname": "test_student"
    })
    result=pg_handler.get_data_simple_condition("student", ["name", "surname"])
    print(result)
    result=pg_handler.get_data_simple_condition("student", ["name", "surname"], target_column="surname", target_value="Hucko")
    print(result)

