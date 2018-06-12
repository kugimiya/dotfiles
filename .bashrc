#   ╦╔═╦ ╦╔═╗╦╔═╗    ╔╗ ╔═╗╔═╗╦ ╦╦═╗╔═╗
#   ╠╩╗║ ║║ ╦║╚═╗    ╠╩╗╠═╣╚═╗╠═╣╠╦╝║  
#   ╩ ╩╚═╝╚═╝╩╚═╝────╚═╝╩ ╩╚═╝╩ ╩╩╚═╚═╝


# include default conf
if [ -f ~/.bashrc_pre ]; then
    . ~/.bashrc_pre
fi


# include custom aliases
if [ -f ~/.bashrc_aliases ]; then
    . ~/.bashrc_aliases
fi


# define update PS function for powerline
function _update_ps1() {
    PS1=$(powerline-shell $?)
}


# sets powerline as PS
if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi


# add local bin dir to PATH
PATH="$PATH:/home/kugi/.local/bin"
