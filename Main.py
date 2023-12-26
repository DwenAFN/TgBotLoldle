from Bot import *


if __name__ == "__main__":
    DB=Database()
    token="6968992956:AAEKdQc2bodPjFiWU9mgiw8J19bTPCY4mi4"
    Bot = Bot(token,DB)
    DB.close()