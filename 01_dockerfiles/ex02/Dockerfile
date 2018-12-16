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

# docker push ft-rails

# faire un nouveau dossier avec rails new app
# Copier dans le dossier de l'app le dockerfile du sujet
# docker build -t rails_app .

# docker run -it --rm -p 3000:3000 rails_app
# Yay you're on rails!
