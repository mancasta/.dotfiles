# env variables
export AWS_DEFAULT_PROFILE="strln"

# env secrets
export JIRA_TOKEN="$(cat ~/.secrets/jira-token)"
export PD_TOKEN="$(cat ~/.secrets/pagerduty-token)"
export GITHUB_TOKEN="$(cat ~/.secrets/gh-token)"
