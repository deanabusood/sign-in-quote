import os
import requests


api = "http://api.quotable.io/random"
randomQuote = requests.get(api).json()


# pull and set legalnoticecaption argument from api
author = randomQuote["author"]
legalnoticecaption = author
# replace any breakable characters to create a clean argument
legalnoticecaption = legalnoticecaption.replace(" ", "_")
legalnoticecaption = legalnoticecaption.replace(",", "+")


# pull and set legalnoticetext argument from api
quote = randomQuote["content"]
legalnoticetext = quote
# replace any breakable characters to create a clean argument
legalnoticetext = legalnoticetext.replace(" ", "_")
legalnoticetext = legalnoticetext.replace(",", "+")
legalnoticetext = legalnoticetext.replace("!","`")

# batch file passed with 2 args
batFilePath = ".\\res\\regeditsystem.bat"
os.system(batFilePath+" "+legalnoticecaption+" "+legalnoticetext)
