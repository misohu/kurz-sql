import psycopg2
from utils import consts

# Contextovy manager nam vie zjednodusit pracu s commitovanim transakcie. 
# Zabalenim prmeennej s connection do kontextoveho managera vieme na konci managera forcnut commit
# POZOR na chyby v ramci tela contextoveho managera

if __name__ == '__main__':
    conn = psycopg2.connect(
        host=consts.POSTGRES_HOST,
        database=consts.POSTGRES_DATABASE,
        user=consts.POSTGRES_USER,
        password=consts.POSTGRES_PASSWORD
    ) 
    with conn:
        with conn.cursor() as cur:
            cur.execute("INSERT INTO student (name, surname) VALUES (%s, %s)", ('test_student', 'test_student'))

    # Ukoncenie bloku contextoveho managera pre connection odpali commit
    # Ak nastane chyba pred ukoncenim bloku mame tu problem. 

    with conn, conn.cursor() as cur:
        try: 
            cur.execute("INSERT INTO student (name, surname) VALUES (%s, %s)", ('test_student', 'test_student'))
            raise Exception("Error")
        except Exception as e:
            print("Error during execution")

    conn.close() # Nezabudnime vzdy ukoncit connection 
    print(conn.closed) # Ak si niesme isty pomocou prametra closed vieme zistit ci je connection uzavrety
