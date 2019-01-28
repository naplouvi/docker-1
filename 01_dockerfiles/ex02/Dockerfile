FROM ruby

RUN apt update
RUN apt install -y nodejs
RUN gem install bundler
RUN gem update bundler
WORKDIR /opt/app

ONBUILD COPY . /opt/app
ONBUILD RUN bundle install

# Créer le container avec :
# docker build -t ft-rails:on-build .

# Aller dans le dossier de l'app (~/rails_app), ajouter dockerfile du sujet
# docker build -t rails_app .

# docker run -it --rm -p 3000:3000 rails_app
# Go to 0.0.0.0:3000
# Yay you're on rails!
