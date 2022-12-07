#!/usr/bin/env python
'''
AUTHOR: Robert DiCicco
DATE:   2022-12-06
Challenge 194 Frequency Equalizer ( Python )

SAMPLE OUTPUT
python .\FrequencyEqualizer.py
Input: $s = abbc
Output: 1

Input: $s = xyzyyxz
Output: 1

Input: $s = xzxz
Output: 0
'''

ss = ["abbc", "xyzyyxz", "xzxz"]
x = 0

for s in ss :
  x = 0
  seen = dict()
  print(f"Input: $s = {s}")
  while x < len(s) :
    zsub = s[x:x+1]
    if zsub in seen :
       seen[zsub] += 1
    else :
       seen[zsub] = 1
    x += 1
  
  highest = max(seen.values())
  lowest  = min(seen.values())
  print("Output: 1\n") if (lowest + 1 == highest) else print("Output: 0")
  
    
  