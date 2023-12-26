import psycopg2
import json

# Replace with your JSON data
class Database:

    def __init__(self):
        self.conn = psycopg2.connect(
            host="localhost",
            database="postgres",
            user="postgres",
            password="1234")

    def close(self):
        self.conn.close()

    def fill_champs(self):
        text_file = open("champions_data.json", "r")
        json_data = text_file.read()

        text_file.close()

        # Load JSON data
        champion_list = json.loads(json_data)

        # Connect to PostgreSQL

        cursor = self.conn.cursor()
        # Create a table if it doesn't exist
        create_table_query = '''
            CREATE TABLE IF NOT EXISTS Champions (
                name VARCHAR PRIMARY KEY,
                gender VARCHAR,
                position VARCHAR,
                species VARCHAR,
                resource VARCHAR,
                range_type VARCHAR,
                regions VARCHAR,
                release_year INTEGER
            );
        '''
        cursor.execute(create_table_query)
        self.conn.commit()

        # Insert data into the table
        for champion in champion_list:
            insert_query = '''
                INSERT INTO Champions (name,gender, position, species, resource, range_type, regions, release_year)
                VALUES (%s,%s, %s, %s, %s, %s, %s, %s);
            '''
            data_tuple = (
                champion['Name'],
                champion['Gender'],
                champion['Position'],
                champion['Species'],
                champion['Resource'],
                champion['Range type'],
                champion['Region(s)'],
                int(champion['Release year'])
            )
            cursor.execute(insert_query, data_tuple)
            self.conn.commit()

        # Close the cursor and connection
        cursor.close()



    def fill_abilities(self):
        text_file = open("data.json", "r")
        json_data = text_file.read()

        text_file.close()

        # Load JSON data
        ability_list = json.loads(json_data)

        # Connect to PostgreSQL

        cursor = self.conn.cursor()

        # Create a table if it doesn't exist
        create_table_query = '''
                CREATE TABLE IF NOT EXISTS abilities (
                    "AbilityID" INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
                    "Champion" VARCHAR ,
                    FOREIGN KEY ("Champion") REFERENCES champions(name),
                    "Path" VARCHAR
                );
            '''
        cursor.execute(create_table_query)
        self.conn.commit()

        # Insert data into the table
        for ability in ability_list:
            insert_query = '''
                    INSERT INTO Abilities ("Champion","Path")
                    VALUES (%s,%s);
                '''
            data_tuple = (
                ability['value'],
                ability['path']
            )
            cursor.execute(insert_query, data_tuple)
            self.conn.commit()

        # Close the cursor and connection
        cursor.close()





    def get_descriptors(self):

        cursor = self.conn.cursor()

        champion_query = '''
                        SELECT * FROM public.champions
                        LIMIT 1
                    '''
        cursor.execute(champion_query)
        res = list(map(lambda a: a[0],cursor.description))
        self.conn.commit()

        cursor.close()

        return res


