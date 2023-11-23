[Service]
Environment=MYAPP_PORT=3000
User=www-data
Group=www-data
# пайпим stdout в logger с тегом myapp
ExecStart=/bin/sh -c '/usr/bin/node /home/garmatos/Bash/node-deamon.js | logger
--tag myapp'
# stder шлём в syslog средствами systemd
StandardError=syslog
SyslogIdentifier=myapp
# устанавливаем уровень логирования: err
SyslogLevel=err
Restart=always
