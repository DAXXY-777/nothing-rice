if status is-interactive
    set -gx EDITOR nano

    alias ll 'ls -lah'
    alias gs 'git status --short'
    alias ga 'git add'
    alias gc 'git commit'
    alias gp 'git push'
    alias .. 'cd ..'
    alias ... 'cd ../..'

    type -q starship; and starship init fish | source
    type -q zoxide; and zoxide init fish | source
    type -q fzf; and fzf --fish | source
end
