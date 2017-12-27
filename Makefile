VIM_HOME=$(HOME)/.vim

all: uninstall install plugins

bootstrap:
	sudo pacman --noconfirm -S vim ctags

plugins:
	./plugins.sh
	vim "+GoInstallBinaries" "+qall"

install:
	echo "Install pathogen"
	mkdir -p $(VIM_HOME)/autoload $(VIM_HOME)/bundle && \
	curl -LSso $(VIM_HOME)/autoload/pathogen.vim https://tpo.pe/pathogen.vim
	echo "Copying vimrc"
	cp vimrc $(HOME)/.vimrc
	echo "Install ftplugin"
	cp -pr ./ftplugin  $(VIM_HOME)
	cp -pr ./ftdetect  $(VIM_HOME)

uninstall:
	rm -rf $(VIM_HOME)
