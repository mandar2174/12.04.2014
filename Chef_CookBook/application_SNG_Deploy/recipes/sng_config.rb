#
# Cookbook Name:: application_SNG_Deploy
# Recipe:: sng_config
#
# Copyright 2014, Aricent
#
# All rights reserved - Do Not Redistribute
#

######### Create Dirctory #############

directory "/opt/SNFPropertyFile" do
  owner "root"
  group "root"
  mode 0777
  action :create
end

directory "/opt/SNFPropertyFile/conf" do
  owner "root"
  group "root"
  mode 0777
  action :create
end

directory "/opt/SNFPropertyFile/logs" do
  owner "root"
  group "root"
  mode 0777
  action :create
end

######### creating files ##########

template "/opt/SNFPropertyFile/conf/snfserver.properties" do
  source "snfserver.properties.erb"
  mode 0777
  owner "root"
  group "root"
end

template "/opt/SNFPropertyFile/logs/sng.log" do
  source "sng.log.erb"
  mode 0777
  owner "root"
  group "root"
end