#
# Cookbook Name:: gem_dependencies
# Recipe:: default
#
# Copyright 2014, Aricent
#
# All rights reserved - Do Not Redistribute
#
##### List of dependencies for the Sensu-client #####
# 1)sensu-plugin
# 2)carrot-top
# 3)mysql2
# 4)rbuy-devel
# 5)redis
# 6)mysql
# 7)snmp
# 8)net-http-persistent
# 9)net-https-persistent
#######################################################

include_recipe "ruby_gems::default"


gem_package "sensu-plugin" do
  action :install
  ignore_failure true
end

gem_package "mysql" do
  action :install
  ignore_failure true
end


gem_package "mysql2" do
  action :install
  ignore_failure true
end

gem_package "redis" do
  action :install
  ignore_failure true
end


gem_package "chef" do
  action :install
  ignore_failure true
end


gem_package "carrot-top" do
  action :install
  ignore_failure true
end


gem_package "snmp" do
  action :install
  ignore_failure true
end

gem_package "net-http-persistent" do
  action :install
  ignore_failure true
end

