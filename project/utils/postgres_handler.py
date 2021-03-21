import psycopg2
import psycopg2.extras
import traceback

from psycopg2 import sql

class PostgresHandler:
    def __init__(self, host, database, user, password):
        self.connection=None
        self.host=host
        self.database=database
        self.user=user
        self.password=password
    
    def connect(self):
        self.connection = psycopg2.connect(
            host=self.host,
            database=self.database,
            user=self.user,
            password=self.password
        )
        print("Connected")

    def insert_data(self, table_name, data_dict):
        if self.connection == None or self.connection.closed:
            self.connect()
        with self.connection, self.connection.cursor() as cur:
            try:
                insert_query=sql.SQL(
                    """
                    INSERT INTO {} ({})
                    VALUES ({});
                    """
                ).format(
                    sql.Identifier(table_name),
                    sql.SQL(',').join(map(sql.Identifier, data_dict.keys())),
                    sql.SQL(',').join(map(sql.Literal, data_dict.values()))
                )
                print(insert_query.as_string(cur)) # Pre kontrolu
                cur.execute(insert_query)
            except Exception as e:
                traceback.print_exc() # Pre kontrolu ked je chyba
                print(f"Error during insert_data {e}")
        self.connection.close()
    
    def get_data_simple_condition(self, table_name, columns=[], target_column=None, target_value=None):
        result=[]
        if self.connection == None or self.connection.closed:
            self.connect()
        
        with self.connection, self.connection.cursor(cursor_factory=psycopg2.extras.DictCursor) as cur:
            try:
                if target_column == None:
                    select_query=sql.SQL(
                        """
                        SELECT {} 
                        FROM {}
                        """
                    ).format(
                        sql.SQL(',').join(map(sql.Identifier, columns)),
                        sql.Identifier(table_name),
                    )
                else:
                    select_query=sql.SQL(
                        """
                        SELECT {} 
                        FROM {}
                        WHERE {} = {}
                        """
                    ).format(
                        sql.SQL(',').join(map(sql.Identifier, columns)),
                        sql.Identifier(table_name),
                        sql.Identifier(target_column),
                        sql.Literal(target_value)
                    )
                print(select_query.as_string(cur)) # Pre kontrolu
                cur.execute(select_query)
                result=cur.fetchall()
            except Exception as e:
                traceback.print_exc() # Pre kontrolu ked je chyba
                print(f"Error during get_data_simple_condition {e}")
        self.connection.close()
        return result
                
