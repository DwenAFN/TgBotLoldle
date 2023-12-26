
class Abilities:
    @staticmethod
    def get_random_ability(DB):
        cursor = DB.conn.cursor()

        random_ability = '''
                   SELECT * FROM public.abilities
                   ORDER BY RANDOM()
                   LIMIT 1
               '''
        cursor.execute(random_ability)
        res = cursor.fetchone()
        DB.conn.commit()

        cursor.close()

        return res