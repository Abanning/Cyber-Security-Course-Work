import sys
import subprocess
import re

def splitString(string):
    return string.split()

def verifyString(string):
    regex = re.compile(r"[a-zA-Z0-9\,\.\"\'\;\:\!\@\#\$\%\^\*\(\)\_\-\+\=\{\}\[\]\?\/]")
    if re.match(regex, string):
        return True
    else:
        return False

def sanitizeString(string):
    if string == "&":
        sanitizedString = "and"
    elif string == "|":
        sanitizedString = "or"
    ## Worst Case capture other operators that aren't allowed
    else:
        sanitizedString = "\n " + string

    return sanitizedString

stringInput = ""
i = 1
for i in sys.argv:
    stringInput += i + " "

print ()
newStringArray = splitString(stringInput)
print ("Raw input arguments: ")
print ("------------------------------------------------------------------------------------------------------------")
print (newStringArray)
print ("------------------------------------------------------------------------------------------------------------")
delItem = newStringArray[0]
newStringArray.remove(delItem)
print ()

finalString = ""
for i in newStringArray:
    if verifyString(i):
        print ("Good String: " + i)
        finalString += i + " "
    else:
        print ("Problem String: " + i)
        sanitizedString = sanitizeString(i)
        finalString += sanitizedString + " "

print ()
print ("Final String: " + finalString)
print ()
print ("Running subprocess...")
subprocess.run("echo " + finalString, shell=True)
print ()
print ()