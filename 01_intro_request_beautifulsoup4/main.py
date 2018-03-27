import requests
from bs4 import BeautifulSoup


def get_html(url: str) -> str:
    resp = requests.get(url)
    return resp.text


def get_data(html: str) -> str:
    soup = BeautifulSoup(html, 'lxml')
    h1 = soup.find('div', id='home-welcome').find('header').find('h1').text.strip()
    return h1


def main():
    url = 'https://wordpress.org/'
    print(get_data(get_html(url)))


if __name__ == '__main__':
    main()
