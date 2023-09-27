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

# GAIA STUFF
 export SOFCOMMON=/home/phuijse/Work/Gaia/common
 export CU7COMMON=/home/phuijse/Work/Gaia/cu7common
 export DOCCOMMON=/home/phuijse/Work/Gaia/common-docs
 export ANT_HOME=$SOFCOMMON/apache-ant-1.10.12
 fish_add_path $ANT_HOME/bin
 export JAVA_HOME=/usr/lib64/jvm/java-17-openjdk
 export TEXMFLOCAL=$DOCCOMMON/texmf
 export SSH_GAIA_PORT_FORWARDING=" -L55431:gaiadb12.obs.unige.ch:55431 -L58065:gaiacollab01.obs.unige.ch:8065 -L50080:gaiadashboard01:8080 -L58161:isdc-gbr00.obs.unige.ch:8161 -L61616:isdc-gbr00.obs.unige.ch:61616 -L55554:gaialog01.obs.unige.ch:5601 -L55433:pigdb00.obs.unige.ch:5433"
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        if lsmod | grep nvidia &> /dev/null
            exec dbus-run-session sway --unsupported-gpu
        else
            exec dbus-run-session sway 
        end
    end
end
