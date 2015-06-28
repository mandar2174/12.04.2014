#
# Author:: Joshua Timberman (<joshua@opscode.com>)
# Cookbook Name:: database
# Recipe:: default
#
# Copyright 2009, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
require 'open-uri'
include_recipe "install-mysql::default"
include_recipe "mysql::server"
include_recipe "sng-database-dump::mysql"
# include_recipe "install-mysql::default"

#create the database with the bookshop name
# drop if exists, then create a mysql database named bookshop
mysql_database 'snfdb' do 
connection( :host => 'localhost', :username => 'root', :password => 'root' ) 
  action [:drop, :create]
  
end


#create the tables with the bookshop_table
#mysql_database 'bookshop' do 
#connection( :host => 'localhost', :username => 'root', :password => 'root' ) 
#sql  "CREATE TABLE bookshop_table(book_id INT NOT NULL AUTO_INCREMENT,book_title VARCHAR(100) NOT NULL,book_author VARCHAR(40) NOT NULL,
#PRIMARY KEY ( book_id ));"
# action :query
 #end

 #Copy the file from remote location and paste to local machine
 
 directory "/home/MySqlDump/" do
  owner "root"
  group "root"
  mode 00777
  action :create
end
 
 remote_file "/home/MySqlDump/sng_database.sql" do
  source "http://10.203.251.142:8888/root/repository/SqlDumpFile/sng_database.sql"
  mode 00777
  
  end
 
 # bash "set_mysql_password" do 
 # code <<-EOH
        # mysqladmin -u root -proot
 # EOH
 # end 
 
#dump the data from file to the table
mysql_database 'snfdb' do 
connection( :host => 'localhost', :username => 'root', :password => 'root' ) 
 ###########Access the sql file from local repository###########
 sql { ::File.open("/home/MySqlDump/sng_database.sql").read }

 action :query
 end



