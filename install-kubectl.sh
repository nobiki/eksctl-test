KUBECTL_URL=https://amazon-eks.s3.us-west-2.amazonaws.com/1.18.9/2020-11-02/bin/linux/amd64/kubectl

#curl -o /tmp/kubectl ${KUBECTL_URL}
sudo install -m 755 /tmp/kubectl /usr/local/bin/kubectl

