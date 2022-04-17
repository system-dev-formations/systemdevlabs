apt update
git clone https://github.com/git/git.git
git clone https://github.com/crunchy-devops/go-web-server.git
cd go-web-server && docker build -t go-web-server .
cd go-web-server && docker run go-web-server > go-web-server
chmod +x go-web-server
apt -y install tig
cd ~