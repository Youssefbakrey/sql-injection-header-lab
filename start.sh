#!/bin/bash

# انتظار حتى يكون MySQL جاهز
echo "Waiting for MySQL to be ready..."
while ! mysqladmin ping -h"$MYSQL_HOST" -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" --silent; do
    echo "MySQL not ready yet..."
    sleep 2
done

echo "MySQL is ready!"

# إنشاء قاعدة البيانات والجداول إذا لم تكن موجودة
mysql -h"$MYSQL_HOST" -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" "$MYSQL_DATABASE" <<EOF
CREATE TABLE IF NOT EXISTS logs (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_agent VARCHAR(500) NOT NULL,
    request_time DATETIME NOT NULL,
    is_vulnerable TINYINT(1) DEFAULT 0
);
EOF

echo "Database initialized!"

# بدء Apache
apache2-foreground
