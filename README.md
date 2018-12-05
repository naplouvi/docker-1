# docker-1
Docker project. Initiation à la conteneurisation.

# 00_how_to_docker

Pour la question 19 :
```mkdir ~/abathur``` sur le mac.

Puis ```vim hello.py``` et coller à l'intérieur :

```
from flask import Flask
from flask import render_template

# creates a Flask application, named app
app = Flask(__name__)

# a route where we will display a welcome message via an HTML template
@app.route("/")
def hello():
    message = "Hello World"
    return render_template('index.html', message=message)

# run the application
if __name__ == "__main__":
    app.run(debug=True)
```

Puis ```vim templates/index.html``` :

```
<html>
        <head>
                <title>{{message}}</title>
        </head>
        <body>
                <h1>{{message}}</h1>
        </body>
</html>
```

Et ensuite run la commande 19 (sh 19). Résultat accessible sur l'ip de Char port 3000.
