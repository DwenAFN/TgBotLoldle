from bs4 import BeautifulSoup
import json
import os
import requests

class toJSON:
    @staticmethod
    def ChampsToJSON():
        text_file = open("C:/Users/artem/Desktop/Html.txt", "r")
        html_fragment =text_file.read()
        text_file.close()

        soup = BeautifulSoup(html_fragment, 'html.parser')

        champions_list = []

        for classic_answer in soup.find_all('div', class_='classic-answer'):
            champion_info = {
                'Name': classic_answer.find_all('div', class_='square-content')[0].text.strip(),
                'Gender': classic_answer.find_all('div', class_='square-content')[1].text.strip(),
                'Position': classic_answer.find_all('div', class_='square-content')[2].text.strip(),
                'Species': classic_answer.find_all('div', class_='square-content')[3].text.strip(),
                'Resource': classic_answer.find_all('div', class_='square-content')[4].text.strip(),
                'Range type': classic_answer.find_all('div', class_='square-content')[5].text.strip(),
                'Region(s)': classic_answer.find_all('div', class_='square-content')[6].text.strip(),
                'Release year': int(classic_answer.find_all('div', class_='square-content')[7].text.strip())
            }
            champions_list.append(champion_info)

        # Convert the list to JSON
        json_data = json.dumps(champions_list, indent=2)

        # Write JSON data to a file
        with open('champions_data.json', 'w') as json_file:
            json_file.write(json_data)

        print(json_data)
    @staticmethod
    def AbilitiesToJSON():

        # HTML content
        text_file = open("Html2.txt", "r")
        html_fragment = text_file.read()
        text_file.close()

        # Parse HTML
        soup = BeautifulSoup(html_fragment, 'html.parser')

        # Create a list to store image paths and champ values
        data_list = []

        # Create a directory to save images
        if not os.path.exists('images'):
            os.makedirs('images')

        # Extract information from HTML
        i = 0
        for ability_item in soup.find_all('a'):
            champ = ability_item.find('img', class_='ability-list__item__champ')['champ']
            image_path = 'images/{}.png'.format(i)
            image_url = "https://www.mobafire.com" + ability_item.find('img', class_='ability-list__item__pic')[
                'data-original']
            i += 1
            # Download image
            response = requests.get(image_url)
            with open(image_path, 'wb') as img_file:
                img_file.write(response.content)

            # Append data to list
            data_list.append({'path': image_path, 'value': champ})

        # Save data as JSON
        json_data = json.dumps(data_list, indent=2)
        with open('data.json', 'w') as json_file:
            json_file.write(json_data)

        print('Images downloaded and data saved to data.json')