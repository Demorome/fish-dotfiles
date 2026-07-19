source /usr/share/cachyos-fish-config/cachyos-config.fish

set -x EDITOR nvim

fzf --fish | source

set -g fish_key_bindings fish_vi_key_bindings

# Some abbr taken from https://github.com/lewisacidic/fish-scripting 

# REMINDER: cdh is cool!
abbr --add - 'cd -'

abbr -a sed sd
abbr -a grep rg
abbr -a find fd
abbr -a vim nvim
abbr -a cat bat
abbr -a ln 'ln -s'
abbr -a rd 'rmdir'
abbr -a md 'mkdir -p'

alias l='eza -blF --git --header --group-directories-first --icons=auto --color=auto'
alias d='dirs'

# overwrite greeting
# potentially disabling fastfetch
function fish_greeting
    # smth smth
end

abbr -a xteink sudo setfacl -m u:demorome:rw /dev/ttyACM-1

# Git
# Mostly based on https://github.com/lewisacidic/fish-git-abbr
abbr --add g git

abbr --add ga "git add -p"
abbr --add gaa 'git add --all'
abbr --add gapp 'git apply'

abbr --add gb 'git branch'
abbr --add gba 'git branch -a'
abbr --add gbd 'git branch -d'
abbr --add gbD 'git branch -D'
abbr --add gbnm 'git branch --no-merged'
abbr --add gbr 'git branch --remote'

abbr --add gbl 'git blame -b -w'

abbr --add gbs 'git bisect'
abbr --add gbsb 'git bisect bad'
abbr --add gbsg 'git bisect good'
abbr --add gbsr 'git bisect reset'
abbr --add gbss 'git bisect start'

abbr --add gc 'git commit -v'
abbr --add gci 'git commit --allow-empty -v -m\'chore: initial commit\''
abbr --add gc! 'git commit -v --amend'
abbr --add gcn 'git commit -v --no-edit'
abbr --add gcn! 'git commit -v --amend --no-edit'
abbr --add gca 'git commit -a -v'
abbr --add gca! 'git commit -a -v --amend'
abbr --add gcan! 'git commit -a -v --no-edit --amend'
abbr --add gcans! 'git commit -a -v -s --no-edit --amend'
abbr --add gcam 'git commit -a -m'
abbr --add gcas 'git commit -a -s'
abbr --add gcasm 'git commit -a -s -m'
abbr --add gcsm 'git commit -s -m'
abbr --add gcm --position anywhere --set-cursor "git commit -m '%'"
abbr --add gcs 'git commit -S'

abbr --add gcf 'git config --list'

abbr --add gcl 'git clone --recurse-submodules'

abbr --add gclean 'git clean -id'

abbr --add gco 'git checkout'
abbr --add gcob 'git checkout -b'
abbr --add gcom 'git checkout (git_main_branch)'
abbr --add gcod 'git checkout (git_develop_branch)'
abbr --add gcof 'git checkout (git_feature_prepend)/'
abbr --add gcoh 'git checkout hotfix/'
abbr --add gcor 'git checkout release/'
abbr --add gcos 'git checkout support/'
abbr --add gcors 'git checkout --recurse-submodules'

abbr --add gcount 'git shortlog -sn'

abbr --add gcp 'git cherry-pick'
abbr --add gcpa 'git cherry-pick --abort'
abbr --add gcpc 'git cherry-pick --continue'

abbr --add gd 'git diff'
abbr --add gdca 'git diff --cached'
abbr --add gdcw 'git diff --cached --word-diff'
abbr --add gdct 'git diff --staged'
abbr --add gdt 'git diff-tree --no-commit-id --name-only -r'
# abbr --add gdnolock 'git diff ":(exclude)package-lock.json" ":(exclude)*.lock"'
abbr --add gdup 'git diff @{upstream}'
# abbr --add gdv 'git diff -w $@ | view -'

abbr --add gdct 'git describe --tags (git rev-list --tags --max-count=1)'

abbr --add gf 'git fetch'
abbr --add gfa 'git fetch --all --prune'
abbr --add gfo 'git fetch origin'

# gg
# gga
# ggf
# ggfl
# ggl
# ggp
# ggpnp
# ggpull
# ggpur
# ggpush
# ggsup
# ggu
# gpsup

abbr --add ghh 'git help'

abbr --add gi 'git init'

abbr --add gignore 'git update-index --assume-unchanged'
abbr --add gignored 'git ls-files -v | grep "^[[:lower:]]"'

abbr --add gk 'gitk --all --branches &!'
abbr --add gke 'gitk --all (git log -g --pretty=%h) &!'

abbr --add gfg 'git ls-files | grep'

# gl: git log
abbr --add gl 'git log'
abbr --add gls 'git log --stat'
abbr --add glsp 'git log --stat -p'
abbr --add glg 'git log --graph'
abbr --add glgda 'git log --graph --decorate --all'
abbr --add glgm 'git log --graph --max-count=10'
abbr --add glo 'git log --oneline --decorate'
abbr --add glog 'git log --oneline --decorate --graph'
abbr --add gloga 'git log --oneline --decorate --graph --all'
# abbr --add glol
# abbr --add glols
# abbr --add glod
# abbr --add glods
# abbr --add glola

# gm: git merge
abbr --add gm 'git merge'
abbr --add gmom 'git merge origin/(git_main_branch)'
abbr --add gmum 'git merge upstream/(git_main_branch)'
abbr --add gma 'git merge --abort'

# gmtl: git mergetool
abbr --add gmtl 'git mergetool --no-prompt'
abbr --add gmtlvim 'git mergetool --no-prompt --tool=vimdiff'

# gp: git push
abbr --add gp 'git push'
abbr --add gpd 'git push --dry-run'
abbr --add gpf 'git push --force-with-lease'
abbr --add gpf! 'git push --force'
abbr --add gpsu 'git push --set-upstream origin (git_current_branch)'
abbr --add gpt 'git push --tags'
abbr --add gptf 'git push --tags --force-with-lease'
abbr --add gptf! 'git push --tags --force'
abbr --add gpoat 'git push origin --all && git push origin --tags'
abbr --add gpoatf! 'git push origin --all --force-with-lease && git push origin --tags --force-with-lease'
abbr --add gpoatf! 'git push origin --all --force && git push origin --tags --force'
abbr --add gpv 'git push -v'

# gpl: git pull
abbr --add gpl 'git pull'
abbr --add gplo 'git pull origin'
abbr --add gplom 'git pull origin (git_main_branch)'
abbr --add gplu 'git pull upstream'
abbr --add gplum 'git pull upstream (git_main_branch)'

# gr: git remote
abbr --add gr 'git remote -v'
abbr --add gra 'git remote add'
abbr --add grau 'git remote add upstream'
abbr --add grrm 'git remote remove'
abbr --add grmv 'git remote rename'
abbr --add grset 'git remote set-url'
abbr --add gru 'git remote update'
abbr --add grv 'git remote -v'
abbr --add grvv 'git remote -vvv'

# grb: git rebase
abbr --add grb 'git rebase'
abbr --add grba 'git rebase --abort'
abbr --add grbc 'git rebase --continue'
abbr --add grbd 'git rebase (git_develop_branch)'
abbr --add grbi 'git rebase -i'
abbr --add grbom 'git rebase origin/(git_main_branch)'
abbr --add grbo 'git rebase --onto'
abbr --add grbs 'git rebase --skip'

# grev: git revert
abbr --add grev 'git revert'

# grs: git reset
abbr --add grs 'git reset'
abbr --add grs! 'git reset --hard'
abbr --add grsh 'git reset HEAD'
abbr --add grsh! 'git reset HEAD --hard'
abbr --add grsoh 'git reset origin/(git_current_branch)'
abbr --add grsoh! 'git reset origin/(git_current_branch) --hard'
abbr --add gpristine 'git reset --hard && git clean -dffx'
abbr --add grs- 'git reset --'

# grm: git rm
abbr --add grm 'git rm'
abbr --add grmc 'git rm --cached'

# grst: git restore
abbr --add grst 'git restore'
abbr --add grsts 'git restore --source'
abbr --add grstst 'git restore --staged'

# grt: git return
abbr --add grt 'cd (git rev-parse --show-toplevel || echo .)'

# gs: git status
abbr --add gs 'git status'
abbr --add gss 'git status -s'
abbr --add gsb 'git status -sb'

# gshow: git show
abbr --add gshow 'git show'
abbr --add gshowps 'git show --pretty=short --show-signature'

# gst: git stash
abbr --add gst 'git stash'
abbr --add gsta 'git stash apply'
abbr --add gstc 'git stash clear'
abbr --add gstd 'git stash drop'
abbr --add gstl 'git stash list'
abbr --add gstp 'git stash pop'
abbr --add gstshow 'git stash show --text'
abbr --add gstall 'git stash --all'
abbr --add gsts 'git stash save'

# gsu: git submodule
abbr --add gsu 'git submodule update'

# gsw: git switch
abbr --add gsw 'git switch'
abbr --add gswc 'git switch -c'
abbr --add gswm 'git switch (git_main_branch)'
abbr --add gswd 'git switch (git_develop_branch)'

# gt: git tag
abbr --add gt 'git tag'
abbr --add gts 'git tag -s'
abbr --add gta 'git tag -a'
abbr --add gtas 'git tag -a -s'
# gtl

# gwch: git whatchanged
abbr --add gwch 'git whatchanged -p --abbrev-commit --pretty=medium'

# gwt: git worktree
abbr --add gwt 'git worktree'
abbr --add gwta 'git worktree add'
abbr --add gwtls 'git worktree list'
abbr --add gwtmv 'git worktree move'
abbr --add gwtrm 'git worktree remove'

# gam: git am
abbr --add gam 'git am'
abbr --add gamc 'git am --continue'
abbr --add gams 'git am --skip'
abbr --add gama 'git am --abort'
abbr --add gamscp 'git am --show-current-patch'

# Git fuzzy-finders
alias gbcopy='git branch | sed "s/^[* ] //" | fzf | wl-copy'
alias gcof='git checkout $(git branch | fzf | sed "s/^[* ] //")'


