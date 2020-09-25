tmux start-server
tmux new-session -d -s repl 
tmux split-window -h -t repl:0
tmux attach -t repl
