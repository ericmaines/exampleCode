# -*- coding: utf-8 -*-
"""
Created on Sat Dec  7 15:44:08 2019

@author: ericm
"""
def decToBin(num):
    if(num > 1):
        decToBin(num//2)
    return num
    

def BinToDec(num):
    bin(num).replace("0b", "")

def reverse(Number):
    while(Number > 0):
        Reminder = Number %10
        reversedd = (reversedd *10) + Reminder
        Number = Number //10

def main():
    usrNum = 13
    input(usrNum)
    dec1 = decToBin(usrNum)
    dec2 = reverse(dec1)
    final = BinToDec(dec2)
    print(final)
    