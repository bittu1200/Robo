list=['January','February','March','April','May','June','July','August','September','October','November','December']

n=int(input("Enter a number\t"))

try:
    print("The month is:\n",list[n-1])
except Exception:
    print("Enter a valid month")
    print("Thank you")
