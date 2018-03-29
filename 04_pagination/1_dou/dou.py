import requests
from bs4 import BeautifulSoup
import csv
from fake_useragent import UserAgent


def get_html(url: str) -> str:
    # use fake_useragent because dou.ua has some protection
    resp = requests.get(url, headers={'User-Agent': UserAgent().chrome})

    # check how the final request sent by us to the server looked,
    # and more specifically - what our User-Agent looked like in the eyes of the server
    # for key, value in resp.request.headers.items():
    #     print(key + ": " + value)

    if resp.ok:         # 200
        return resp.text
    else:                # 403, 404 and etc.
        print(resp.status_code)


def write_csv(data: dict) -> None:
    with open('dou.csv', 'a') as f:
        writer = csv.writer(f)
        writer.writerow([data['title'], data['link'], data['reviews']])


def get_page_data(html: str) -> None:
    soup = BeautifulSoup(html, 'lxml')

    articles = soup.find('div', class_='b-forum-articles').find_all('article')

    for article in articles:
        links = article.find('h2').find_all('a')
        try:
            title = links[0].text
        except:
            title = ''
        try:
            link = links[0].get('href')
        except:
            link = ''
        try:
            num_reviews = links[1].text.strip()
        except:
            num_reviews = ''

        num_reviews = check_number_of_reviews(num_reviews)

        data = {"title": title, 'link': link, 'reviews': num_reviews}
        write_csv(data)


def check_number_of_reviews(num_reviews: str):
        # 12K ==> 12000
        if num_reviews.endswith('K'):
            return num_reviews[0:-1:] + '000'
        return num_reviews


def main():
    pattern = 'https://dou.ua/forums/page/{}/'

    # parse 4 first pages
    for page in range(1, 5):
        url = pattern.format(str(page))
        get_page_data(get_html(url))


if __name__ == '__main__':
    main()
