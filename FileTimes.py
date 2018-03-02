import os
import datetime

#Get File Name from User
filename = input("Please enter a filename: ")

#Set Variables (m/mt = Modified a/at = Accessed)
m = os.path.getmtime(filename)
a = os.path.getatime(filename)
at = datetime.datetime.fromtimestamp(a)
mt = datetime.datetime.fromtimestamp(m)

#Print time last Accessed
print(filename + " Last accessed at: ")
print(at)

#Print time last Modified
print(filename + " Last modified at: ")
print(mt)
