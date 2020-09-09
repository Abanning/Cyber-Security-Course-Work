import sys
import subprocess
import re

def splitString(string):
    return string.split()

def verifyString(string):
    regex = re.compile(r"[a-zA-Z0-9\,\.\"\'\;\:\!\@\#\$\%\^\*\(\)\_\-\+\=\{\}\[\]\?\/\&\|]")
    if re.match(regex, string):
        return True
    else:
        return False

def isKeyword(string):
    if string == "type":
        return True

def isAFileName(string):
    regex = re.compile(r"\.+\\+\w+")
    if re.match(regex, string):
        return True
    else:
        return False

def sanitizeString(string):
    if string == "type":
        sanitizedString = "echo"
    elif isAFileName(string):
        sanitizedString = "& echo " + string
    ## Worst Case capture other operators that aren't allowed
    else:
        sanitizedString = "\n " + string

    return sanitizedString

stringInput = ""
i = 1
for i in sys.argv:
    stringInput += i + " "

newStringArray = splitString(stringInput)
print ()
print ("Raw input arguments: ")
print ("------------------------------------------------------------------------------------------------------------")
print (newStringArray)
print ("------------------------------------------------------------------------------------------------------------")
print ()
delItem = newStringArray[0]
newStringArray.remove(delItem)

finalString = ""
count = 0
for i in newStringArray:
    if (verifyString(i) and not isKeyword(i)):
        if (count < 1):
            print ("Good String: " + i)
            finalString += i + " "
        elif (isAFileName(i)):
            print ("Problem String: " + i + "\t <--------- Second filename not allowed")
            sanitizedString = sanitizeString(i)
            finalString += sanitizedString + " "
    else:
        print ("Problem String: " + i)
        sanitizedString = sanitizeString(i)
        finalString += sanitizedString + " "
    count += 1

print ()
print ("Final String: " + finalString)
print ()
print ("Running subprocess...")
subprocess.run("type " + finalString, shell=True)
print ()