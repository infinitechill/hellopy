#!/bin/bash
# check for correct # of parameters
if [ "$#" -ne 1 ]
  then
    echo "Illegal number of parameters"
    exit
fi

# create the new directory for our program
mkdir -p ~/apps/hellopy/new/$1
# echo contents into c file
echo "
#infinite chill / 2017

import sys

#define a python class
class myClass(object):
    #constructor  
    def __init__(self, p1,p2,p3,astring):
        self.var1 = p1
        self.var2 = p2
        self.var3 = p3
        self.astring = astring
    #a function to double values and replace string    
    def doublevalues(self):
        self.var1 = self.var1*2
        self.var2 = self.var2*2
        self.var3 = self.var3*2
        self.astring = \"super cool\"
        return
    #a function to print out the values    
    def printvalues(self):
        print self.var1
        print self.var2
        print self.var3
        print self.astring
        return

#print greeting
print \"hello!\"
#create object
myClass=myClass(1,2,3,\"hello world\")
#print values
myClass.printvalues()
#call double values function
myClass.doublevalues()
#print results
myClass.printvalues()
" > ~/apps/hellopy/new/$1/$1.py

# run program
cd ~/apps/hellopy/new/$1
python $1.py

# open folder
open ~/apps/hellopy/new/$1