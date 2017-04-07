#The FROM keyword tells Docker which image your image is based on.
FROM docker/whalesay:latest

#Install python 2.7
RUN sudo yum install -y python27

#Create a /etc/yum.repos.d/mongodb-org-3.0.repo file so that you can install MongoDB directly, using yum.
RUN echo 'name=MongoDB Repository
	  baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.0/x86_64/
	  gpgcheck=0
          enabled=1' >> /etc/yum.repos.d/mongodb-org-3.0.repo

#Install mongodb
RUN sudo yum install -y mongodb-org

#Install apache
RUN sudo yum install httpd

#Change default port 80 to custom port 8080
RUN echo 'Listen 8080' >> /etc/httpd/conf/httpd.conf

#Opening port
RUN sudo iptables -I INPUT -p tcp --dport 8080 -j ACCEPT
RUN sudo service iptables save

#Restarting service to save changes
RUN sudo service httpd restart

#final command to start apache server
CMD sudo /usr/sbin/apachectl start
