#
# Cookbook Name:: initial-update-vm
# Recipe:: default
#
# Copyright 2014, Aricent
#
# All rights reserved - Do Not Redistribute
#
####### Remove the PackageKit prevent yum lock while recipe installation ##########

execute "RemovePackageKit" do
 command "echo y | yum remove PackageKit"
  action :run 
end

#include_recipe "install_public_GPL_Key::default"

#include_recipe "java::default"

#include_recipe "install-mysql::default"

