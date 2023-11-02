dnf install nginx -y &>> /tmp/out

cp expense.conf /etc/nginx/default.d/expense.conf &>> /tmp/out
rm -rf /usr/share/nginx/html/*

curl -o /tmp/frontend.zip https://expense-artifacts.s3.amazonaws.com/frontend.zip &>> /tmp/out

cd /usr/share/nginx/html &>> /tmp/out
unzip /tmp/frontend.zip &>> /tmp/out

systemctl restart nginx &>> /tmp/out


