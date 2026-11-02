import requests
import os

header = os.environ['PVE_API_HEADER']
url = "https://lab.home.lab:8006/api2/json/nodes/lab/status"

headers = {
    "Authorization": f"{header}"
}

data = {"command": "shutdown"}
response = requests.post(
    url,
    headers=headers,
    data=data,
    timeout=5
)
print(response.json())
