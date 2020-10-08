import subprocess
import os
import re

def findWholeWord(w):
    return re.compile(r'\b({0})\b'.format(w), flags=re.IGNORECASE).search

TASK_COUNT = 2
completed_taks = 0

for i in range(1, TASK_COUNT + 1):
    os.chdir(f'task0{i}/')
    p = subprocess.Popen(['python3', f'test0{i}.py'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    stdout,stderr = p.communicate()
    stderr = stderr.decode('utf-8')
    stdout = stdout.decode('utf-8')

    cur = 0
    if findWholeWord('OK')(stderr) is not None:
        cur += 1

    if findWholeWord('OK')(stdout) is not None:
        cur += 1

    if cur > 0:
        completed_taks += 1

    os.chdir('../')

print(completed_taks)
