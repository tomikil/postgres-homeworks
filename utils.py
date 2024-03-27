import psycopg2
import csv


def get_list_file_csv(files):
    """
    Возвращает список данных из файла
    """
    with open(files, 'r', encoding='utf8') as file:
        list_readers = []
        red = next(file)
        readers = csv.reader(file)
        for row in readers:
            list_readers.append(row)
    return list_readers


def adding_in_table(conn, data, name_table, param):
    """
    Заполнение таблиц в базы данных
    """
    with conn:
        with conn.cursor() as cur:
            for row in data:
                cur.execute(f"INSERT INTO {name_table} VALUES ({param})", row)




