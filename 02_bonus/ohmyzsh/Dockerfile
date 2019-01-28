FROM	debian

RUN		apt-get update && apt-get install -y wget git zsh \
		&& wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

CMD		["zsh"]
# echo $0 pour voir le shell
