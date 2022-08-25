import requests
import sys

SERVICE1_URL = "http://service.example.com:8080"

message = requests.get(sys.stdin.readline()).text
data = ["md5", message]

print(data)


print(requests.post(SERVICE1_URL, data = "\n".join(data)).text)
