# docker-1
Docker project. Initiation à la conteneurisation.

# 00_how_to_docker

Pour la question 19 :
```mkdir ~/abathur``` sur le mac.

Puis ```vim hello.py``` et coller à l'intérieur :

```
from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def hello_world():
    return '<h1>Hello World</h1>'

if __name__ == '__main__':
    app.run()
```

Et ensuite run la commande 19 (sh 19).
