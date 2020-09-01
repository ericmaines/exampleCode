# 08-31-2020
# 
# Generates a report on the number of indecent/explicit lyrics in a song given the lyrics

import sys

indecent_list = ["piss", "cock", "pussy", "prick", "snatch"]
profane_list  = ["fuck", "fucking", "fucked", "fucks", "shit", "cunt", "twat", "poon", "tits", "cum"]
questionable_list = ["asshole", "bastard", "goddamn", "god damn", "bitch", "nigga", "nigger", "slut", "crap",
                     "turd", "poop", "ass", "douche", "damn", "hell", "penis", "vagina", "masturbation", 
                     "butt", "balls", "fag", "faggot","fags"]


def get_input_file(file_name):
    file = open(file_name, "rt")
    contents = file.read()
    return str(contents)

def compare_words(file):
    file_lower = file.lower()
    sep_text = file_lower.split()
    is_clean = True
    if set(indecent_list).intersection(sep_text):
        print("Indecent:")
        print(set(indecent_list).intersection(sep_text))
        is_clean = False
    if set(profane_list).intersection(set(sep_text)):
        print("Profane:")
        print(set(profane_list).intersection(sep_text))
        is_clean = False
    if set(questionable_list).intersection(set(sep_text)):
        print("Questionable:")
        print(set(questionable_list).intersection(sep_text))
        is_clean = False
    if is_clean: 
        print("FCC Clean")


def make_output_file(fcc_list):
    pass


lyric_file = get_input_file(sys.argv[1])
compare_words(lyric_file)
