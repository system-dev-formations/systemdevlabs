ssh root@[[HOST_IP]] 'echo "Host *" >> /root/.ssh/config && echo "    StrictHostKeyChecking no" >> /root/.ssh/config && chmod 400 /root/.ssh/config'

while [ ! -f /root/.kube/config ]
  do
    sleep 1
  done
if [ -f /root/.kube/start ]; then
  /root/.kube/start
fi
wget https://github.com/helm/helm/archive/v3.4.2.tar.gz
tar -zxvf v3.4.3.tar.gz
cd helm-3.4.2/
make
cd bin
cp  helm /usr/local/bin/helm
echo done >> /root/katacoda-finished
echo done >> /root/katacoda-background-finished