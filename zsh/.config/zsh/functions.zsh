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
    local PYTHONPATH="/Users/mancasta/Workspace/wwwin/tutor"
    (cd /Users/mancasta/Workspace/wwwin/tutor && exec /Users/mancasta/Workspace/wwwin/tutor/.venv/bin/tutor $@)
}
