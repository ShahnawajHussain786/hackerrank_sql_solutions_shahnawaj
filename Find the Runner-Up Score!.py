# -*- coding: utf-8 -*-
"""
Created on Sun Dec 31 13:34:44 2023

@author: Shahnawaj Hussain
"""

if __name__ == '__main__':
    n = int(input())
    arr = map(int, input().split())
    s = list(set(arr))
    s.remove(max(s))
    print(max(s))