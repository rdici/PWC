#!/usr/bin/env python
'''
-------------------------------------------
AUTHOR: Robert DiCicco
DATE  : 2023-02-20
Challenge 205 Third Highest ( Julia )
-------------------------------------------
'''

arr = [[5,3,4], [5,6], [5,4,4,3]]

def unique(list1):
    unique_list = []
    for x in list1:
        if x not in unique_list:
            unique_list.append(x)
    print("Output: ",min(unique_list))
   
def Process(a):
    ln = len(a)
    if (ln < 3) :
        print("Output: ",max(a))
    elif (ln == 3):
        print("Output: ",min(a))
    else :
        a.sort()
        unique(a)
    print(" ")
    
for a in arr:
    print("Input: @array = ",a)
    Process(a)
    
    
'''
 -------------------------------------------
SAMPLE OUTPUT
python .\ThirdHighest.py
Input: @array =  [5, 3, 4]
Output:  3

Input: @array =  [5, 6]
Output:  6

Input: @array =  [5, 4, 4, 3]
Output:  3
'''   