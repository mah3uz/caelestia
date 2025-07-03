set -gx EDITOR nvim
set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml

if status is-interactive
    # Starship custom prompt
    starship init fish | source

    # Custom colours
    cat ~/.local/state/caelestia/sequences.txt 2>/dev/null

    # For jumping between prompts in foot terminal
    function mark_prompt_start --on-event fish_prompt
        echo -en "\e]133;A\e\\"
    end
end

alias vim="nvim"
