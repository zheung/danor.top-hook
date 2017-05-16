date +"%y-%m-%d %H:%M:%S" 1>/root/logs/kq/bsh.log

pm2 stop /root/serv/index.js 1>>/root/logs/kq/bsh.log 2>>/root/logs/kq/bsh.log

eval `ssh-agent` 1>>/root/logs/kq/bsh.log 2>>/root/logs/kq/bsh.log

ssh-add /root/.ssh/kqpu 1>>/root/logs/kq/bsh.log 2>>/root/logs/kq/bsh.log
ssh-add /root/.ssh/kimg 1>>/root/logs/kq/bsh.log 2>>/root/logs/kq/bsh.log

ssh-add -l 1>>/root/logs/kq/bsh.log 2>>/root/logs/kq/bsh.log

cd /root/serv/serv/_

git clean -fd 1>>/root/logs/kq/bsh.log 2>>/root/logs/kq/bsh.log
git checkout -- . 1>>/root/logs/kq/bsh.log 2>>/root/logs/kq/bsh.log
git pull github master 1>>/root/logs/kq/bsh.log 2>>/root/logs/kq/bsh.log

cd /root/serv/serv/pub

git clean -fd 1>>/root/logs/kq/bsh.log 2>>/root/logs/kq/bsh.log
git checkout -- . 1>>/root/logs/kq/bsh.log 2>>/root/logs/kq/bsh.log
git pull github master 1>>/root/logs/kq/bsh.log 2>>/root/logs/kq/bsh.log

cd /root/serv/serv/hook

git clean -fd 1>>/root/logs/kq/bsh.log 2>>/root/logs/kq/bsh.log
git checkout -- . 1>>/root/logs/kq/bsh.log 2>>/root/logs/kq/bsh.log
git pull github master 1>>/root/logs/kq/bsh.log 2>>/root/logs/kq/bsh.log

cd /root/serv/serv/kq

git clean -fd 1>>/root/logs/kq/bsh.log 2>>/root/logs/kq/bsh.log
git checkout -- . 1>>/root/logs/kq/bsh.log 2>>/root/logs/kq/bsh.log
git pull github master 1>>/root/logs/kq/bsh.log 2>>/root/logs/kq/bsh.log

cd /root/serv/serv/af

git clean -fd 1>>/root/logs/kq/bsh.log 2>>/root/logs/kq/bsh.log
git checkout -- . 1>>/root/logs/kq/bsh.log 2>>/root/logs/kq/bsh.log
git pull github master 1>>/root/logs/kq/bsh.log 2>>/root/logs/kq/bsh.log

cd /root/serv

git clean -fd 1>>/root/logs/kq/bsh.log 2>>/root/logs/kq/bsh.log
git checkout -- . 1>>/root/logs/kq/bsh.log 2>>/root/logs/kq/bsh.log
git pull github master 1>>/root/logs/kq/bsh.log 2>>/root/logs/kq/bsh.log

npm i 1>>/root/logs/kq/bsh.log 2>>/root/logs/kq/bsh.log

pm2 start /root/serv/index.js 1>>/root/logs/kq/bsh.log 2>>/root/logs/kq/bsh.log