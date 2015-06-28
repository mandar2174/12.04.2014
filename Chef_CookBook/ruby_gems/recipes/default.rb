#
# Cookbook Name:: ruby_gems
# Recipe:: default
#
# Copyright 2014, Aricent
#
# All rights reserved - Do Not Redistribute
#


include_recipe "install-mysql::default"

bash "install-ruby" do 
 code <<-EOH

        echo y | yum install ruby
      EOH
 end 
 
 bash "install-ruby-dependency" do 
 code <<-EOH

        # echo y | yum install gcc g++ make automake autoconf curl-devel openssl-devel zlib-devel 
		# echo y | yum install httpd-devel apr-devel apr-util-devel sqlite-devel ruby-rdoc bc
		echo y | install gcc
		echo y | install g++
		echo y | install make
		echo y | install automake
		echo y | install curl-devel
		echo y | install openssl-devel
		echo y | install zlib-devel
		echo y | install httpd-devel
		echo y | install apr-devel
		echo y | install apr-util-devel
		echo y | install sqlite-devel
		echo y | install ruby-rdoc
		echo y | install bc
      EOH
 end 
 
 
 bash "install-ruby-gems" do 
 code <<-EOH

        echo y | yum install rubygems
      EOH
 end 
 
 bash "update-gems" do 
 code <<-EOH

       gem update --system
      EOH
 end 
 
 
 