class Users:
    @staticmethod
    def add_user(DB,id,username):

        cursor = DB.conn.cursor()


        user_query = '''
            INSERT INTO users ("UserID","Username")
                VALUES (%s,%s)
            ON CONFLICT DO NOTHING
            '''
        data_tuple = (id, username)

        cursor.execute(user_query, data_tuple)
        DB.conn.commit()

        cursor.close()

    @staticmethod
    def update_user(DB,id,wins_classic,wins_abilities):

        cursor = DB.conn.cursor()

        update_user = '''
                UPDATE users
                SET "Guessed Champions"="Guessed Champions"+%s,
                "Guessed Abilities"="Guessed Abilities"+%s
                WHERE "UserID"=%s
            '''
        cursor.execute(update_user,(wins_classic,wins_abilities,id))
        DB.conn.commit()

        cursor.close()

    @staticmethod
    def get_user(DB,id):

        cursor = DB.conn.cursor()

        update_user = '''
                    SELECT * FROM users
                    WHERE "UserID"=%s
                '''
        cursor.execute(update_user, (id,))
        res=cursor.fetchone()
        DB.conn.commit()

        cursor.close()
        return res
