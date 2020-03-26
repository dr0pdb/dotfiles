#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# for ruby gem
export PATH="/home/srv_twry/.gem/ruby/2.5.0/bin:$PATH"

# Android studio
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools

# Golang
export GOPATH=/home/srv_twry/golib
export PATH=$PATH:$GOPATH/bin
export GO111MODULE=on
alias visitwork='cd /media/work'

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Kubeflow
export KF_NAME=kubeflow-project

# Set the path to the base directory where you want to store one or more 
# Kubeflow deployments. For example, /opt/.
# Then set the Kubeflow application directory for this deployment.
export BASE_DIR=/media/work/kubeflow-deployments/
export KF_DIR=${BASE_DIR}/${KF_NAME}

# Set the configuration file to use when deploying Kubeflow.
# The following configuration installs Istio by default. Comment out 
# the Istio components in the config file to skip Istio installation. 
# See https://github.com/kubeflow/kubeflow/pull/3663
export CONFIG_URI="https://raw.githubusercontent.com/kubeflow/manifests/v0.7-branch/kfdef/kfctl_k8s_istio.0.7.0.yaml"

NPM_PACKAGES="${HOME}/.npm-packages"

export PATH="$PATH:$NPM_PACKAGES/bin"

# Preserve MANPATH if you already defined it somewhere in your config.
# Otherwise, fall back to `manpath` so we can inherit from `/etc/manpath`.
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"
source /usr/share/nvm/init-nvm.sh

export JAVA_HOME="/usr/lib/jvm/java-8-openjdk/jre"
