echo "setting up"

ln -s .vimrc ~/.vimrc
ln -s .bash_login ~/.bash_login
#ln -s .bash_login ~/.bashrc

echo "Setting up Pathogen"

mkdir -p ~/.vim/autoload ~/.vim/bundle; 
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

cd ~/.vim/bundle
echo "adding bundles"
git clone https://github.com/poolhtwoo/vim-scala.git
git clone https://github.com/kchmck/vim-coffee-script.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/msanders/snipmate.vim.git
git clone https://github.com/vim-scripts/desert.vim.git
git clone https://github.com/maksimr/vim-jsbeautify.git
git clone https://github.com/wincent/Command-T.git
git clone git://github.com/tpope/vim-fugitive.git
git clone https://github.com/fholgado/minibufexpl.vim.git
cd ~/.vim/bundle/command-t/ruby/command-t
  ruby extconf.rb
    make

cd ~/.vim/bundle/vim-jsbeautify && git submodule update --init --recursive
