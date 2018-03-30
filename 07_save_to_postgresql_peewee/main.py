import csv
from peewee import *

db = PostgresqlDatabase(database='test',
                        user='postgres',
                        password='postgres',
                        host='localhost')


class Coin(Model):
    name = CharField()
    url = TextField()
    price = CharField()

    class Meta:
        database = db


def main():
    db.connect()
    db.create_tables([Coin])

    with open('cmc.csv') as f:
        order = ['name', 'url', 'price']
        reader = csv.DictReader(f, fieldnames=order)

        coins = list(reader)

        # 1 way to save data
        # for row in coins:
        #     coin = Coin(name=row['name'], url=row['url'], price=row['price'])
        #     coin.save()

        # 2 way to save data via transactions
        # with db.atomic():
        #     for row in coins:
        #         Coin.create(**row)

        # 3 way to save data, insert 100 records at a time
        with db.atomic():
            for index in range(0, len(coins), 100):
                Coin.insert_many(coins[index:index+100]).execute()


if __name__ == '__main__':
    main()
