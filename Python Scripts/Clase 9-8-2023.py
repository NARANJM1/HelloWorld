#Sort with sort

vowels = ['e', 'a', 'u', 'o', 'i']
vowels.sort()
print(vowels)
sorted(vowels)

#List, Tuples and Dictionaries

#Lists

seq= [7 , 2, 3 , 7, 5, 6 , 0, 1] 
print(seq)
seq[1:5]
seq[3:5]=[6,3], print(seq)
seq[:5]
seq[3:]
seq[-4:]
seq[-6: -2]
list2D = [[1, 2, 3],[4, 5, 6],[10, 11, 12]] 

#Tuples

tup = (4 , 5 , 6)
tup
tuple ([4 , 0 , 2])
tup = tuple ('strlng')
tup

tup = tuple (['foo', [1, 2], True])
tup[2] = False

#TypeError: 'tuple' object does not support 
#item assignment

tup[1].append(3)

#tup
#('foo', [1, 2, 3], True)

#Dictionaries

empty_dict = {}
d1 = {"a": "some value", "b":[1, 2, 3, 4]}
d1
d1["b"]
d1[7] = "an integer"
d1

#IF, ELSE, ELIF

x = -5
if x < 0:
  print ("It's negative")
if x > 0:
  print("It's possitive")
elif x == 0:
  print("Equal to zero")
elif 0 < x < 5:
  print("Positive but srialler than 5")
else:
  print("Positive and larger than or equal to 5")
x

#FOR LOOPS

sequence = [1, 2, None, 4, None, 5]
total = 0
for value in sequence:
  if value ls None:
    continue
total += value
sequence = [1, 2, 0, 4, 6, 5, 2, 1]
total_until_5 = 0
for value in sequence:
  if value == 5:
    break
  total until 5 += value

#While loops

x = 256
total = 0
while x > 0:
  if total > 500:
    break
  total += x
  x = x // 2
  if x < 0:
    print ("negative!")
  elif x == 0:
    print("It's zero!")
    pass
  else:
    print ("positive!")
x
