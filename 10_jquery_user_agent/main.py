import csv
import requests
from bs4 import BeautifulSoup


def get_html(url: str):
    header = {'User-Agent': 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) '
                            'Chrome/65.0.3325.181 Safari/537.36 OPR/52.0.2871.40'}
    response = requests.get(url, headers=header)
    return response.text


def get_articles(html):
    soup = BeautifulSoup(html, 'lxml')
    ts = soup.find('div', class_='testimonial-container').find_all('article')
    return ts   # [] or [a, b, c]


def get_page_data(ts):
    for t in ts:
        try:
            since = t.find('p', class_='traxer-since').text.strip()
        except:
            since = ''
        try:
            author = t.find('p', class_='testimonial-author').text.strip()
        except:
            author = ''

        data = {'author': author, 'since': since}
        write_csv(data)


def write_csv(data):
    with open('testimonials.csv', 'a') as f:
        order = ['author', 'since']
        writer = csv.DictWriter(f, fieldnames=order)
        writer.writerow(data)


def main():
    page = 1
    while True:

        url = 'https://catertrax.com/why-catertrax/traxers/page{}/'.format(str(page))

        articles = get_articles(get_html(url))  # [] or [1, 2, 3]

        if articles:
            get_page_data(articles)
            page = page + 1
        else:
            break


if __name__ == '__main__':
    main()
