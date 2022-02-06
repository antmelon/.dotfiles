function fish_greeting
    fortune
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    function fetch
	eval $HOME/fm6000 -n -de i3
    end
    fetch &
end

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

starship init fish | source 
export STARSHIP_CONFIG=~/.config/starship.conf

# set ANDROID_SDK_ROOT /home/anthony/Android/Sdk 
