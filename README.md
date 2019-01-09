# README

```python:http.rb
# coding:utf-8

import requests
import json

proxies = {
  'http': 'http://proxy.tc.kawai-juku.ac.jp:3128/',
  'https': 'http://proxy.tc.kawai-juku.ac.jp:3128/',
}

api = 'http://HOST/api/raspberry/count/{user_id}'
url = api.format(id=1)
r = requests.get(url, proxies=proxies)
data = json.loads(r.text)
print(data["name"])
```
