log_file="/tmp/out"
color="\e[33m"

echo -e "${color} installing nginx \e[0m "
dnf install nginx -y &>> log_file

cp expense.conf /etc/nginx/default.d/expense.conf &>> log_file
rm -rf /usr/share/nginx/html/*

curl -o /tmp/frontend.zip https://expense-artifacts.s3.amazonaws.com/frontend.zip &>> log_file

cd /usr/share/nginx/html &>> log_file
unzip /tmp/frontend.zip &>> log_file

systemctl restart nginx &>> log_file


