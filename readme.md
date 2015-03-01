Am I Done Yet?
=============

Are you writing your thesis, a book, or something else using LaTeX and vim? And
do you sometimes wonder how many pages you've managed to bang out so far? I
often do, so I wrote this little script.

Dependencies
============

In short:
* Recent version of Vim. 7.4, but 7.3 should do the trick as well.
* The "detex" tool. It's available in MacPorts for OSX, and likely also in your
  favorite package manager on Linux.
* To ease installation, Vundle, Pathogen, vim-plug

Due to the requirements, Am I Done Yet is probably only compatible on Unix-like systems.

Installation
============

Pathogen
--------
```
$ cd ~/.vim
$ git clone https://github.com/berntfrost/amidoneyet.vim bundle/amidoneyet.vim
```

Vundle / vim-plug
--------
If you are using something like Vundle or vim-plug, you are probably familiar
with how installing plugins work. Add the following to your vimrc:
```
Plugin 'berntfrost/amidoneyet.vim'
```

Usage
===========

Open a .tex file and run the command :CountPages. If you want, you can map the
command to something like <leader>cp.
You can either run the command on a particular .tex file to get page count for
that file (and any included .tex files), or run it on your main .tex to get the
total page count for your entire project.

