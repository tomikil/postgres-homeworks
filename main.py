"""Скрипт для заполнения данными таблиц в БД Postgres."""
import psycopg2
import utils

employees_data = 'north_data/employees_data.csv'
customers_data = 'north_data/customers_data.csv'
orders_data = 'north_data/orders_data.csv'
# подключение к базе данных
con = psycopg2.connect(host='localhost', database='north', user='postgres', password='Dpe734Hns9e')


def main():
    try:
        utils.adding_in_table(con, utils.get_list_file_csv(employees_data), 'employees', "%s, %s, %s, %s, %s, %s")
        utils.adding_in_table(con, utils.get_list_file_csv(customers_data), 'customers', "%s, %s, %s")
        utils.adding_in_table(con, utils.get_list_file_csv(orders_data), 'orders', "%s, %s, %s, %s, %s")
    finally:
        print('Операция успешно выполнена')
        con.close()


if __name__ == '__main__':
    main()

