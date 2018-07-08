#!/usr/bin/env bash
mvn clean install
cd ~/apache-tomcat-9.0.10/bin
sh shutdown.sh
cd ../webapps/
rm -rf /root/apache-tomcat-9.0.10/webapps/ROOT
rm -f /root/apache-tomcat-9.0.10/webapps/ROOT.war
rm -f /root/apache-tomcat-9.0.10/webapps/order.war
cp /home/localhost/.jenkins/workspace/DeployOrder/order/target/order.war ~/apache-tomcat-9.0.10/webapps/
mv order.war ROOT.war
cd ../bin
sh startup.sh