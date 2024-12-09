# env variables
export AWS_DEFAULT_PROFILE="strln"
export GIT_SSH_COMMAND="ssh -i /Users/mancasta/.ssh/id_ed25519"

# env secrets
export JIRA_TOKEN="$(cat ~/.secrets/jira-token)"
export PD_TOKEN="$(cat ~/.secrets/pagerduty-token)"
export GH_PAT="$(cat ~/.secrets/ghc-token)"
export GH_SOURCE_PAT="$(cat ~/.secrets/ghes-token)"
