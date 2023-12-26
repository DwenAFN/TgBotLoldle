import os
import requests
from bs4 import BeautifulSoup
import json

# HTML content
text_file = open("Html2.txt", "r")
html_fragment =text_file.read()
text_file.close()

# Parse HTML
soup = BeautifulSoup(html_fragment, 'html.parser')

# Create a list to store image paths and champ values
data_list = []

# Create a directory to save images
if not os.path.exists('images'):
    os.makedirs('images')

# Extract information from HTML
i=0
for ability_item in soup.find_all('a'):
    champ = ability_item.find('img', class_='ability-list__item__champ')['champ']
    image_path = 'images/{}.png'.format(i)
    image_url = "https://www.mobafire.com"+ability_item.find('img', class_='ability-list__item__pic')['data-original']
    i+=1
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