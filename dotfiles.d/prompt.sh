if [ $SSH_TTY ]; then
  PS1="$COOLGREEN\u@\h $COOLBLUE\w $LIGHTRED\$(current_git_branch)\$(git_special)$YELLOW\$(local_user)$LIGHTRED$ $NC"
  PS1="$PS1\[\e]0;\u@\h\a\]"
else
  PS1="$COOLGREEN\h $COOLBLUE\w $LIGHTRED\$(current_git_branch)\$(git_special)$YELLOW\$(local_user)$LIGHTRED$ $NC"
  PS1="$PS1\[\e]0;\a\]"
fi
