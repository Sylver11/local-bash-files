#!/bin/sh
tmux start-server
tmux new-session -d -s 'dev-tmux'
tmux send-keys 'pa;va' C-m	
tmux splitw -h -p 30
#tmux send-keys 'db' C-m
#tmux splitw -v -p 30
tmux send-keys 'pa;va;python development.py' C-m	
tmux splitw -v -p 5
tmux send-keys 'soffice "--accept=socket,host=localhost,port=2002;urp;"' C-m
tmux attach-session -t 'dev-tmux'
tmux selectp -t 0
tmux attach-session -t 'dev-tmux'
