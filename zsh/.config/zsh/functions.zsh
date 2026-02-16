get-token() {
    jq -r .access_token ~/.sl/tokens
}

pid-by-port() {
    pid=`lsof -t -i:$1`
    if [ -n "$pid" ]; then
        echo "process PID: " $pid
        ps $pid
    else
        echo "No process found using port $1"
    fi
}

tutor() {
    local PYTHONPATH="/Users/mancasta/Workspace/tutor"
    (cd /Users/mancasta/Workspace/tutor && exec /Users/mancasta/Workspace/tutor/.venv/bin/tutor $@)
}
