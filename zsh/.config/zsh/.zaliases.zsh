# ls aliases
alias ll='gls -Alvh --group-directories-first --dereference --color'
alias lln='gls -Alvh --group-directories-first --color'

# scheduler api aliases
alias scheduler-dev='scheduler-cli -H "scheduler.vm.d1.strln.net:32000" --key "$(get-token)"'
alias scheduler-stage='scheduler-cli -H "scheduler.vm.s1.strln.net" --key "$(get-token)"'
alias scheduler-prod='scheduler-cli -H "scheduler.vm.strln.net" --key "$(get-token)"'

# streamline aliases
alias sl-container-prod='sl container cluster configure --cluster-id="elzkfld90z4zx52juhp0dtd1z"'
alias sl-container-stage='sl container cluster configure --cluster-id="6r7wy3vwemgtj9buh670toju6"'
alias sl-datadog='sl monitor datadog login --org-id cd07d04d6'
alias sl-datadog-sigraki='sl monitor datadog login --org-id yjmmzgp5vm28wbxb'
alias sl-aws-prod='sl aws session generate --account-id "632748658429" --role-name "owner" --profile "slvm_prod"'
alias sl-aws-stage='sl aws session generate --account-id "612669989884" --role-name "owner" --profile "slvm_stage"'
alias sl-aws-dev='sl aws session generate --account-id "495613368115" --role-name "owner" --profile "slvm_dev"'
alias token='sl iam token refresh'

# rundeck aliases
alias rd='$HOME/.local/bin/rd-2.0.8/bin/rd'
alias rd-1-4-3='$HOME/.local/bin/rd-1.4.3/bin/rd'
alias rd-prod="RD_TOKEN="$(cat ~/.secrets/rd-prod)" RD_URL=https://rundeck-us-west-2-prod.vm.strln.net:4443 rd-1-4-3"
alias rd-stage="RD_TOKEN="$(cat ~/.secrets/rd-stage)" RD_URL=https://rundeck-us-west-2-stage.vm.s1.strln.net:4443 rd-1-4-3"
alias rd-dev="RD_TOKEN="$(cat ~/.secrets/rd-dev)" RD_URL=https://rundeck-us-west-2-dev.vm.d1.strln.net:4443 rd-1-4-3"
alias rd-dev-test="RD_TOKEN="$(cat ~/.secrets/rd-dev-test)" RD_URL=https://rundeck-us-west-2-test-dev.vm.d1.strln.net:4443 rd-1-4-3"
alias rd-dev-test2="RD_TOKEN="$(cat ~/.secrets/rd-dev-test2)" RD_URL=https://rundeck-us-west-2-test2-dev.vm.d1.strln.net:4443 rd-1-4-3"
alias rd-legacy="RD_TOKEN="$(cat ~/.secrets/rd-legacy)" RD_URL=https://rundeck-usw2.compute.strln.net/rd/api/24 rd-1-4-3"

# random tools aliases
alias now='date -u "+%Y-%m-%dT%H-%M-%S%Z"'
alias k9s='k9s --readonly -n default'
alias tfswitch='tfswitch -b "$HOME/.local/bin/terraform"'
alias aws-whoami='aws --profile strln sts get-caller-identity'
alias ff="fastfetch"
alias jctt="PYTHONPATH=/Users/mancasta/Workspace/cloudsec_sysv/ops-docs/checklists/scripts /Users/mancasta/Workspace/cloudsec_sysv/ops-docs/checklists/scripts/.venv/bin/JiraChecklistTemplate"
