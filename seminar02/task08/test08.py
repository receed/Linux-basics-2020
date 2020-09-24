import unittest
import subprocess
import os
from collections import Counter


class Test8(unittest.TestCase):
    def test1(self):
        p = subprocess.Popen(['bash', 'task08.sh'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        stdout, stderr = p.communicate()

        result = 0

        with open('hamlet.txt', 'r') as f:
            hamlet = list(map(lambda word: ''.join(c for c in word if c.isalpha()), f.read().split()))
            only_the = list(filter(lambda word: 'the' == word.lower(), hamlet))
            result = len(only_the)
            f.close()

        self.assertEqual(result, int(stdout))


if __name__ == '__main__':
    unittest.main()
