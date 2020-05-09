from requests import get
from requests.exceptions import RequestException
from contextlib import closing
from bs4 import BeautifulSoup
import re

def simple_get(url):
    """
    Attempts to get the content at `url` by making an HTTP GET request.
    If the content-type of response is some kind of HTML/XML, return the
    text content, otherwise return None.
    """
    try:
        with closing(get(url, stream=True)) as resp:
            if is_good_response(resp):
                return resp.content
            else:
                return None

    except RequestException as e:
        log_error('Error during requests to {0} : {1}'.format(url, str(e)))
        return None


def is_good_response(resp):
    """
    Returns True if the response seems to be HTML, False otherwise.
    """
    content_type = resp.headers['Content-Type'].lower()
    return (resp.status_code == 200 
            and content_type is not None 
            and content_type.find('html') > -1)


def log_error(e):
    """
    It is always a good idea to log errors. 
    """
    print(e)
    
def getTeamData():
    """
    Downloads the page where the list of team scores is found
    and returns a list of strings, one per team
    """
    print('Begin scraping scores...')
    rawScoresHTML = simple_get('https://www.espn.com/mens-college-basketball/standings')
    scoresHTML = BeautifulSoup(rawScoresHTML, 'html.parser')
    file2 = open('teamData.txt', 'w')
    print('Writing scores to text file...')
    for j, lo in enumerate(scoresHTML.select('td')):
        file2.write(lo.text)
        file2.write('\n')
    file2.close()
    print('writing team scores complete')
    
def stringSearch(line):
    isaString = re.search('[a-zA-Z]', line[1])
    if isaString != None:
        return('team')
    if isaString == None:
        if re.search('[a-zA-Z]', line[2]) != None:
            return('team')
        return('score')

def scoresFormat(fileName):
    """
    Takes a file and adds spaces to make data readable
    Writes to a new file
    """
    file = open(fileName, 'r')
    file2 = open('editedTeamData.txt', 'w')
    print('begin formatting...')
    numTeams=0
    i=0
    j=0
    for line in file:
        scoreOrTeam = stringSearch(line)
        if scoreOrTeam == 'team':
            file2.write('\n')
            numTeams = numTeams + 1
            file2.write(line)
        if scoreOrTeam == 'score':
            while i <= numTeams:
                file2.write('\n')
                while j < 9: 
                    i = i+1
                    scoreLine = file.readline()
                    file2.write(scoreLine)
                    j = j+1
                j=0
        numTeams = 0
        i=0
    file.close()
    file2.close()
    print('formatting complete')
        
    
if __name__ == "__main__":
    getTeamData()
    scoresFormat('teamData.txt')