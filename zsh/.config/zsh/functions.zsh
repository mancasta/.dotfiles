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

sl-registry-auth() {
    REGISTRY_AUTH="$(sl container registry auth generate --json)"
    docker login registry.strln.net \
        --username "$(jq -r '.username' <<<"$REGISTRY_AUTH")" \
        --password-stdin <<< "$(jq -r '.token' <<<"$REGISTRY_AUTH")"
    helm registry login registry.strln.net \
        --username "$(jq -r '.username' <<<"$REGISTRY_AUTH")" \
        --password-stdin <<< "$(jq -r '.token' <<<"$REGISTRY_AUTH")"
    unset REGISTRY_AUTH
}