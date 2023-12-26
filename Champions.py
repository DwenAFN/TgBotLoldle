class Champions:
    @staticmethod
    def get_random_champ(DB):

        cursor = DB.conn.cursor()

        random_champion = '''
                    SELECT * FROM public.champions
                    ORDER BY RANDOM()
                    LIMIT 1
                '''
        cursor.execute(random_champion)
        res = cursor.fetchone()
        DB.conn.commit()

        cursor.close()

        return res
    @staticmethod
    def get_champ(DB,Name):

        cursor = DB.conn.cursor()

        champion_query = '''
                    SELECT * FROM public.champions
                    WHERE Name = %s
                '''
        cursor.execute(champion_query,(Name,))
        res = cursor.fetchone()
        DB.conn.commit()

        cursor.close()

        return res
