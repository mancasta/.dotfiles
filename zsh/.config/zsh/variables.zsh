# env variables
# export AWS_REGION='us-east-1'
export AWS_DEFAULT_PROFILE="strln"
export AWS_ACCESS_KEY_ID='AKIARVVJYHHNUXVDXDV6'
export GIT_SSH_COMMAND="ssh -i /Users/mancasta/.ssh/id_ed25519"
export TELEPORT_PROXY="teleport.strln.net:443"
export TELEPORT_CLUSTER="teleport.strln.net"
export TELEPORT_LOGIN="teleport-admin"

# env secrets
export JIRA_TOKEN="$(cat ~/.secrets/jira-token)"
export PD_TOKEN="$(cat ~/.secrets/pagerduty-token)"
export GH_PAT="$(cat ~/.secrets/ghc-token)"
export GH_SOURCE_PAT="$(cat ~/.secrets/ghes-token)"
export SPLUNK_TOKEN="$(cat ~/.secrets/splunk-token)"
export AWS_SECRET_ACCESS_KEY="$(cat ~/.secrets/aws-secret-access-key)"
