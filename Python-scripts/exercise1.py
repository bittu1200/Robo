name=[]
n1=int(input("Enter the number of names\t"))

for x in range(n1):
    string1=input("Enter the name\t")
    name.append(string1)

greeting=[]
n2=int(input("Enter the number of greetings\t"))

for x in range(n2):
    string2=input("Enter the greeting\t")
    greeting.append(string2)

for x in range(n1):
    for y in range(n2):
        print(greeting[y]+"\t"+name[x])