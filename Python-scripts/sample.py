import requests

a = requests.get("https://reqres.in/api/users?page=2")

print(a.status_code)
print(a.content)

