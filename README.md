# My Neovim Configuration

.config/nvim/init.vim
```bash
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
```

install-neovim.<span>s</span>h
```bash
# install neovim
brew install neovim && brew install python3 && pip3 install neovim

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install vim packages
while read line; do
  if [ "${line:0:1}" != "#" ]; then
    git clone $line
  fi
done < ~/.vim/bundle/vim-packages

# make snippets in vim-snippets available to ultisnips
cp ~/.vim/bundle/vim-snippets/UltiSnips/* ~/.vim/bundle/ultisnips/syntax/
```

~/.vim/bundle/vim-packages

```bash
# packages list
https://github.com/jiangmiao/auto-pairs
https://github.com/morhetz/gruvbox
https://github.com/scrooloose/nerdcommenter
https://github.com/scrooloose/nerdtree
https://github.com/godlygeek/tabular
https://github.com/sirver/ultisnips
https://github.com/bling/vim-airline
https://github.com/easymotion/vim-easymotion
https://github.com/tpope/vim-repeat
https://github.com/justinmk/vim-sneak
https://github.com/honza/vim-snippets
https://github.com/tpope/vim-surround
```


