import sys
import subprocess

subprocess.run("echo " + sys.argv[1], shell=True)
