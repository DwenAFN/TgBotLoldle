from bs4 import BeautifulSoup
import json
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