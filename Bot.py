import logging
from typing import Dict
from DB import Database
from Abilities import *
from Users import *
from Champions import *
from telegram import ReplyKeyboardMarkup, ReplyKeyboardRemove, Update
from telegram.ext import (
    Application,
    CommandHandler,
    ContextTypes,
    ConversationHandler,
    MessageHandler,
    filters,
)

#green circle \U0001F7E2
#yellow circle \U0001F7E1
# red \U0001F534




# Enable logging
logging.basicConfig(
    format="%(asctime)s - %(name)s - %(levelname)s - %(message)s", level=logging.INFO
)
# set higher logging level for httpx to avoid all GET and POST requests being logged
logging.getLogger("httpx").setLevel(logging.WARNING)

logger = logging.getLogger(__name__)

MENU,GAME,ABILITY = range(3)
a=None
reply_keyboard = [
    ["Classic"],
    ["Abilities"],
    ["Stats"],
    ["Help"],
]
markup = ReplyKeyboardMarkup(reply_keyboard, one_time_keyboard=True)


class Bot:


    def __init__(self,token,DB):

        self.DB = DB
        self.token=token
        # Create the Application and pass it your bot's token.
        application = Application.builder().token(self.token).build()

        # Add conversation handler with the states CHOOSING, TYPING_CHOICE and TYPING_REPLY
        conv_handler = ConversationHandler(
            entry_points=[CommandHandler("start", self.start), MessageHandler(filters.Regex("^Classic$"), self.classic),
                          MessageHandler(filters.Regex("^Abilities$"), self.abilities),
                          MessageHandler(filters.Regex("^Stats$"), self.stats),
                          MessageHandler(filters.Regex("^Help$"), self.help)],
            states={
                MENU: [
                    MessageHandler(filters.Regex("^Classic$"), self.classic),
                    MessageHandler(filters.Regex("^Abilities$"), self.abilities),
                    MessageHandler(filters.Regex("^Stats$"), self.stats),
                    MessageHandler(filters.Regex("^Help$"), self.help),

                ],
                GAME: [
                    MessageHandler(filters.Regex("^Classic$"), self.classic),
                    MessageHandler(filters.Regex("^Abilities$"), self.abilities),
                    MessageHandler(filters.Regex("^Stats$"), self.stats),
                    MessageHandler(filters.Regex("^Help$"), self.help),
                    MessageHandler(filters.TEXT, self.guess),
                ],
                ABILITY: [
                    MessageHandler(filters.Regex("^Classic$"), self.classic),
                    MessageHandler(filters.Regex("^Abilities$"), self.abilities),
                    MessageHandler(filters.Regex("^Stats$"), self.stats),
                    MessageHandler(filters.Regex("^Help$"), self.help),
                    MessageHandler(filters.TEXT, self.guess_ability),
                ]
            },
            fallbacks=[],
        )

        application.add_handler(conv_handler)

        # Run the bot until the user presses Ctrl-C
        application.run_polling(allowed_updates=Update.ALL_TYPES)



    async def start(self,update: Update, context: ContextTypes.DEFAULT_TYPE) -> int:


        user = update.message.from_user
        id = user['id']
        name = user['name'][1:]

        Users.add_user(self.DB,id, name)

        await update.message.reply_text(
            "Hi! My name is Loldle Bot.\n"
            "Now you can play Loldle in Telegram! \U0001F7E2",
            reply_markup=markup,
        )

    async def classic(self,update: Update, context: ContextTypes.DEFAULT_TYPE) -> int:

        reply_markup = ReplyKeyboardRemove()
        await update.message.reply_text("Guess champion")
        global a
        a = Champions.get_random_champ(self.DB)
        logger.info("Started Classic game")
        logger.info("Random champion: %s", a)
        return GAME


    def get_difference(self,Champion_A, Champion_B):
        response = ""
        descriptors = self.DB.get_descriptors()
        for i in range(1, len(Champion_B) - 1):

            if (Champion_A[i] == Champion_B[i]):
                response += "\U0001F7E2 "
            elif (any(x in Champion_A[i] for x in str(Champion_B[i]).split(",  "))):
                response += "\U0001F7E1 "
            else:
                response += "\U0001F534 "
            response += str(descriptors[i]) + ": " + Champion_B[i]+"\n"

        if (Champion_A[7] == Champion_B[7]):
            response += "\U0001F7E2 "+str(descriptors[7]) + ": " + str(Champion_B[7]) + "\n"
        elif (Champion_A[7] > Champion_B[7]):
            response += "\U0001F53A "+str(descriptors[7]) + ": " + str(Champion_B[7]) + "\n"
        else:
            response += "\U0001F53B "+str(descriptors[7]) + ": " + str(Champion_B[7]) + "\n"

        return response


    async def guess(self,update: Update, context: ContextTypes.DEFAULT_TYPE) -> int:

        id = update.message.from_user.id
        Name = update.message.text.lower()
        logger.info("Guessed: %s", Name)

        if (Name == a[0].lower()):
            await update.message.reply_text("You guessed right\n This is " + a[0] + "!")
            logger.info("Guessed Right")
            reply_markup = markup
            Users.update_user(self.DB,id, 1, 0)
            return ConversationHandler.END
        else:
            new_name = ""
            for name_fragment in Name.split(' '):
                new_name += name_fragment[0].upper() + Name[1:].lower() + ' '
            Name = new_name[:-1]
            champion = Champions.get_champ(self.DB,Name[0].upper()+Name[1:].lower())
            if (champion == None):
                await update.message.reply_text("There is no such champion")
                logger.info("No such champion")
            else:
                await update.message.reply_text(self.get_difference(a, champion))
                logger.info("Guessed Wrong: %s",champion)
            return GAME

    async def abilities(self,update: Update, context: ContextTypes.DEFAULT_TYPE) -> int:

        reply_markup = ReplyKeyboardRemove()
        global a
        a = Abilities.get_random_ability(self.DB)
        logger.info("Started Ability game")
        logger.info("Random ability: %s", a)
        await update.message.reply_photo(open(a[2], 'rb'), "Guess champion by ability")

        return ABILITY

    async def guess_ability(self,update: Update, context: ContextTypes.DEFAULT_TYPE) -> int:

        id = update.message.from_user.id
        Name = update.message.text.lower()
        logger.info("Guessed: %s", Name)


        if (Name == a[1].lower()):
            await update.message.reply_text("You guessed right\n This ability belongs to " + a[1] + "!",reply_markup = markup)
            logger.info("Guessed Right")
            Users.update_user(self.DB,id, 0, 1)
            return ConversationHandler.END
        else:
            new_name=""
            for name_fragment in Name.split(' '):
                new_name+=name_fragment[0].upper()+Name[1:].lower()+' '
            Name=new_name[:-1]
            champion = Champions.get_champ(self.DB,Name[0].upper()+Name[1:].lower())
            if (champion == None):
                await update.message.reply_text("There is no such champion")
                logger.info("No such champion")
            else:
                await update.message.reply_text("\U0001F534 This is not " + Name[0].upper()+Name[1:].lower())
                logger.info("Guessed Wrong")
            return ABILITY

    async def stats(self,update: Update, context: ContextTypes.DEFAULT_TYPE) -> int:

        logger.info("Opened Stats")
        id = update.message.from_user.id
        reply_markup = markup
        res = Users.get_user(self.DB,id)

        await update.message.reply_text(
            "Your stats\nUsername: {}\n Wins in Classic: {}\n Wins in Abilities: {}".format(res[1], res[2], res[3]),reply_markup = markup)
        return MENU

    async def help(self,update: Update, context: ContextTypes.DEFAULT_TYPE) -> int:

        logger.info("Opened Stats")
        await update.message.reply_text(
            "This is LoLdle \nHow it works:\n Classic: You need to guess champion by clues\n\U0001F7E2 means you right\n\U0001F534 means you are wrong\n\U0001F7E1 means you are partially right\n\n Abilities:\n You are presented with an image of ability and you need to guess what champion it belongs to.\n\n Have fun!",reply_markup = markup)
        return ConversationHandler.END











