import requests
from bs4 import BeautifulSoup
import csv


def get_html(url: str) -> str:
    resp = requests.get(url)
    return resp.text


def refined(s: str) -> str:
    # 1,499 total ratings
    r = s.split(" ")[0]         # 1,499
    return r.replace(',', '')   # 1499


def write_csv(data: dict) -> None:
    with open('plugins.csv', 'a') as f:
        writer = csv.writer(f)
        writer.writerow((data['name'], data['url'], data['reviews']))


def get_data(html: str) -> None:
    soup = BeautifulSoup(html, 'lxml')
    popular = soup.find_all('section')[1]
    plugins = popular.find_all('article')

    for plugin in plugins:
        name = plugin.find('h2').text
        url = plugin.find('h2').find('a').get('href')
        r = plugin.find('span', class_='rating-count').find('a').text
        rating = refined(r)

        data = {'name': name, 'url': url, 'reviews': rating}
        write_csv(data)


def main():
    url = 'https://wordpress.org/plugins/'
    get_data(get_html(url))


if __name__ == '__main__':
    main()
