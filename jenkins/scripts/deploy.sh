#!/usr/bin/env sh

set -x
docker run -d -p 5000:80 --name my-apache-php-app -v  /var/jenkins_home/workspace/jenkins-php-selenium-test/src:/var/www/html php:7.2-apache
sleep 1
set +x

echo 'Now...'
echo 'Visit http://localhost:5000 to see your PHP application in action.'
