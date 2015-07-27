.dotfiles
#########

My dotfiles shared via github. How nice. I took all the sensitive bits out of course, so you are on your own for .ssh/

Anyway, if you clone this into your home folder like so;

```bash
git clone https://github.com/rdammkoehler/.dotfiles .
```

Then you want to run the *hidden* script therin that will link all these shiny files into your home folder. Like so;

```bash
. .link.sh
```

Each file in the .dotfiles folder will be linked into the current users home folder. If the file or link exists you will be prompted to overwrite it (or not). When the script finishes it moves the LICENSE and README.md files into the .dotfiles folder so the don't clutter up the joint. 

The result is something like this;

```bash
ls -al ~ | grep -e ".dotfiles"
lrwxr-xr-x    1 rich  staff     51 Jul  7 23:41 .bash_login -> /Users/rich/.dotfiles/.bash_login
lrwxr-xr-x    1 rich  staff     47 Jul  7 23:41 .bashrc -> /Users/rich/.dotfiles/.bashrc
lrwxr-xr-x    1 rich  staff     58 Jul  7 23:42 .git-completion.sh -> /Users/rich/.dotfiles/.git-completion.sh
lrwxr-xr-x    1 rich  staff     54 Jul  7 23:42 .git-prompt.sh -> /Users/rich/.dotfiles/.git-prompt.sh
lrwxr-xr-x    1 rich  staff     50 Jul  7 23:42 .gitconfig -> /Users/rich/.dotfiles/.gitconfig
lrwxr-xr-x    1 rich  staff     45 Jul  7 23:42 .gitk -> /Users/rich/.dotfiles/.gitk
lrwxr-xr-x    1 rich  staff     48 Jul  7 23:42 .profile -> /Users/rich/.dotfiles/.profile
lrwxr-xr-x    1 rich  staff     46 Jul  7 23:42 .swear -> /Users/rich/.dotfiles/.swear
lrwxr-xr-x    1 rich  staff     50 Jul  7 23:42 .tmux.conf -> /Users/rich/.dotfiles/.tmux.conf
lrwxr-xr-x    1 rich  staff     47 Jul  7 23:42 .zlogin -> /Users/rich/.dotfiles/.zlogin
lrwxr-xr-x    1 rich  staff     46 Jul  7 23:42 .zshrc -> /Users/rich/.dotfiles/.zshrc
lrwxr-xr-x    1 rich  wheel     26 Jul 27 16:34 LICENSE -> /Users/rich/.dotfiles/LICENSE
lrwxr-xr-x    1 rich  wheel     28 Jul 27 16:34 README.md -> /Users/rich/.dotfiles/README.md
```

Now remember, wherever you put the repo (your home folder is good, but wherever) the script will link the files in the .dotfiles folder to your home folder. The command uses an absolute location, not a relative one. 

If that is not what you wanted you can pass an argument to the .link.sh script to use an alternative folder like this;

```bash
. .link.sh somefolder
```

That will put links inplace for somefolder rather than your home folder. Your output would look like this;

```bash
% mkdir somefolder
% . .link.sh somefolder
somefolder
somefolder/.bash_login -> ~/.dotfiles/.bash_login
somefolder/.bashrc -> ~/.dotfiles/.bashrc
somefolder/.emacs.d -> ~/.dotfiles/.emacs.d
somefolder/.git-completion.sh -> ~/.dotfiles/.git-completion.sh
somefolder/.git-prompt.sh -> ~/.dotfiles/.git-prompt.sh
somefolder/.gitconfig -> ~/.dotfiles/.gitconfig
somefolder/.gitk -> ~/.dotfiles/.gitk
somefolder/.profile -> ~/.dotfiles/.profile
somefolder/.swear -> ~/.dotfiles/.swear
somefolder/.tmux.conf -> ~/.dotfiles/.tmux.conf
somefolder/.zlogin -> ~/.dotfiles/.zlogin
somefolder/.zshrc -> ~/.dotfiles/.zshrc
% ls -al somefolder/
total 96
drwxr-xr-x  14 rich  wheel  476 Jul 27 16:25 .
drwxr-xr-x   9 rich  wheel  306 Jul 27 16:25 ..
lrwxr-xr-x   1 rich  wheel   30 Jul 27 16:25 .bash_login -> ~/.dotfiles/.bash_login
lrwxr-xr-x   1 rich  wheel   26 Jul 27 16:25 .bashrc -> ~/.dotfiles/.bashrc
lrwxr-xr-x   1 rich  wheel   27 Jul 27 16:25 .emacs.d -> ~/.dotfiles/.emacs.d
lrwxr-xr-x   1 rich  wheel   37 Jul 27 16:25 .git-completion.sh -> ~/.dotfiles/.git-completion.sh
lrwxr-xr-x   1 rich  wheel   33 Jul 27 16:25 .git-prompt.sh -> ~/.dotfiles/.git-prompt.sh
lrwxr-xr-x   1 rich  wheel   29 Jul 27 16:25 .gitconfig -> ~/.dotfiles/.gitconfig
lrwxr-xr-x   1 rich  wheel   24 Jul 27 16:25 .gitk -> ~/.dotfiles/.gitk
lrwxr-xr-x   1 rich  wheel   27 Jul 27 16:25 .profile -> ~/.dotfiles/.profile
lrwxr-xr-x   1 rich  wheel   25 Jul 27 16:25 .swear -> ~/.dotfiles/.swear
lrwxr-xr-x   1 rich  wheel   29 Jul 27 16:25 .tmux.conf -> ~/.dotfiles/.tmux.conf
lrwxr-xr-x   1 rich  wheel   26 Jul 27 16:25 .zlogin -> ~/.dotfiles/.zlogin
lrwxr-xr-x   1 rich  wheel   25 Jul 27 16:25 .zshrc -> ~/.dotfiles/.zshrc
```


