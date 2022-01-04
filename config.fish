fish_vi_key_bindings
alias vi="/usr/bin/vim"
alias v="/usr/bin/vi"
alias vim="nvim"
alias k="kubectl"

set -x PATH $PATH:/usr/local/go/bin

if test (uname) = "Darwin"
    fish_add_path /opt/homebrew
    fish_add_path "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
end
