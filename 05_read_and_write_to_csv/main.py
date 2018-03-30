import csv


def write_csv(data: dict):
    with open('names.csv', 'a') as file:
        writer = csv.writer(file)
        writer.writerow((data['name'], data['surname'], data['age']))


def write_csv2(data: dict):
    with open('names.csv', 'a') as file:
        order = ['name', 'surname', 'age']
        writer = csv.DictWriter(file, fieldnames=order)
        writer.writerow(data)


def read_csv():
    with open('names.csv') as file:
        order = ['name', 'surname', 'age']
        reader = csv.DictReader(file, fieldnames=order)

        for row in reader:
            print(row)


def main():
    d = {'name': 'Petr', 'surname': 'Ivanov', 'age': 21}
    d1 = {'name': 'Ivan', 'surname': 'Ivanov', 'age': 18}
    d2 = {'name': 'Ksu', 'surname': 'Petrova', 'age': 32}

    data_list = [d, d1, d2]

    for i in data_list:
        write_csv2(i)

    read_csv()


if __name__ == '__main__':
    main()
