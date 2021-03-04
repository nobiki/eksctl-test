## kube-ps1
git clone https://github.com/jonmosco/kube-ps1.git ~/.kube-ps1
cat <<"EOT" >> ~/.bash_profile

source ~/.kube-ps1/kube-ps1.sh
function get_cluster_short() {
  echo "$1" | cut -d . -f1
}
KUBE_PS1_CLUSTER_FUNCTION=get_cluster_short
KUBE_PS1_SUFFIX=') '
PS1='$(kube_ps1)'$PS1
EOT


## kubectx / kubens
git clone https://github.com/ahmetb/kubectx.git ~/.kubectx
sudo ln -sf ~/.kubectx/completion/kubens.bash /etc/bash_completion.d/kubens
sudo ln -sf ~/.kubectx/completion/kubectx.bash /etc/bash_completion.d/kubectx
cat <<"EOT" >> ~/.bash_profile

export PATH=~/.kubectx:$PATH
EOT

## stern
sudo curl -L -o /usr/local/bin/stern https://github.com/wercker/stern/releases/download/1.11.0/stern_linux_amd64
sudo chmod +x /usr/local/bin/stern

