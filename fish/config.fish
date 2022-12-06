if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path -p /home/{$USER}/.local/bin 
source /opt/miniconda3/etc/fish/conf.d/conda.fish

zoxide init fish | source
starship init fish | source
fish_ssh_agent

export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_DESKTOP=sway
export XDG_CONFIG_HOME=$HOME/.config
export MOZ_ENABLE_WAYLAND=1
export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export QT_QPA_PLATFORM=wayland
export PASSWORD_STORE_X_SELECTION=primary


if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        if lsmod | grep nvidia &> /dev/null
            exec dbus-run-session sway --unsupported-gpu
        else
            exec dbus-run-session sway 
        end
    end
end
