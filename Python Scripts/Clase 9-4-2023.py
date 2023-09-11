my_list = []
my_list = list ()

my_list = [1, 2, 3]
my_list2 = ["a", "b", "c"]
my_list3 = ["a", 1, "Python", 5]

my_nested_list = [my_list, my_list2]
my_nested_list

my_nested_list[0]

#Concatenate with EXTEND

combo_list = []
one_list = [4, 5]
combo_list.extend(one_list)

my_list = [1, 2, 3]
my_list2 = ["a", "b", "c"]
combo_list = my_list + my_list2

#Sort with sort

vowels = ['e', 'a', 'u', 'o', 'i']
vowels.sort()
print(vowels)
sorted(vowels)
