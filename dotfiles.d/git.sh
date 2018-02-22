git config --global alias.st status
git config --global alias.co checkout
git config --global alias.cm 'commit -m'
alias gst='git status'

alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset' --abbrev-commit"

gd() {
  git diff
  local untracked="$(git ls-files --others --exclude-standard)"
  if [ ! -z $untracked ]; then
    echo -e "\n${WHITE}Untracked files:${NC}"
    echo $untracked
  fi
}

gcun() {
  local commit_message="$(git log -n 1 HEAD 2>/dev/null)"
  pbcopy commit_message
  git reset --soft HEAD^ && git reset HEAD .
}

grb() {
  if [ -n "$1" ]; then
    git push origin HEAD:refs/heads/$1
    git fetch origin &&
    git checkout -b $1 --track origin/$1
  else
    git branch --set-upstream `current_git_branch` origin/`current_git_branch`
  fi
}

local_user() {
  if [ -d .git ]; then
    local pair=""
    for person in $(command git config --local --get user.initials); do
      pair+=$person
    done

    if [ -z "$pair" ]; then
      :
    else
      echo -n " "$pair" "
    fi
  fi
}

current_git_branch() {
  if [ -d .git ]; then
    local git_dir="$(git rev-parse --git-dir 3>/dev/null)"
    local git_branch=`git symbolic-ref HEAD 2>/dev/null || git describe --exact-match HEAD 2>/dev/null | cut -c1-7 "$git_dir/HEAD"`
    git_branch=${git_branch#refs/heads/}
    echo -n $git_branch
  fi
}

git_special() {
  wrap_unless_empty "`git_mode`" "`git_commits_ahead`" "`git_commits_behind`" "`git_dirty_state`"
}

wrap_unless_empty() {
  if [ -n "$1" ] || [ -n "$2" ] || [ -n "$3" ] || [ -n "$4" ]; then
    echo -n "($1$2$3$4)"
  fi
}

git_mode() { # [1]
  local git_dir="$(git rev-parse --git-dir 2>/dev/null)"
  local git_mode
  if [ -f "$git_dir/BISECT_LOG" ] ; then
    git_mode='BISECTING'
  elif [ -f "$git_dir/rebase-merge/interactive" ] ; then
    git_mode='REBASE-i'
  elif [ -f "$git_dir/rebase-apply/rebasing" ] ; then
    git_mode='REBASE'
  elif [ -f "$git_dir/MERGE_HEAD" ] ; then
    git_mode='MERGING'
  fi
  echo -n $git_mode
}

git_commits_ahead() {
  git status -sb 2> /dev/null | head -n 1 | grep ahead | sed -e 's/.*ahead \([0-9]\{1,\}\).*/+\1/'
}

git_commits_behind() {
  git status -sb 2> /dev/null | head -n 1 | grep behind | sed -e 's/.*behind \([0-9]\{1,\}\).*/-\1/'
}

# Roughly from git_completion
git_dirty_state() {
  if [ -n "`git status --porcelain 2>/dev/null`" ]; then
    echo -n "*"
  fi
}


# [1] github.com/hashrocket/dotmatrix/commit/d888bfee55ca430ba109e011d8b0958e810f799a
