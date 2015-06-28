#
# Cookbook Name:: install-mysql
# Recipe:: default
#
# Copyright 2014, Aricent
#
# All rights reserved - Do Not Redistribute
#

#  After installaing mysql, service mysqld should start

############Install java from cookbook java ##########
include_recipe "java::default"

bash "install-mysql" do 
 code <<-EOH

	#echo y | yum install mysql 
	#echo y | yum install mysql-server 
	echo y | yum install mysql-devel
	service mysqld restart
    mysqladmin -u root password root
	mysql -u root -proot -hlocalhost --execute="CREATE DATABASE IF NOT EXISTS snfdb;"

 EOH
 end 
 
 #	