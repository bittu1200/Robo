def fib():
    n = int(input("Enter number of terms\n"))

    n1 = 0
    n2 = 1
    count = 0

    if n == 1:
        print("Fibonacci Sequence:\n")
        print(n1)

    elif n > 1:
        print("Fibonacci Sequence:\n")

        while count < n:
            print(n1, end=" ")

            t = n1 + +n2
            n1 = n2
            n2 = t
            count += 1
    else:
        print("Enter valid number of terms\n")


choice = 'Yes'
while choice in ['Yes', 'yes']:
        fib()
        choice = input("\nYou want to perform Fibonacci Operations(Yes|No)\t")

print("Thank you")