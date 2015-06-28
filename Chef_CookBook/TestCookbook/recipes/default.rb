#
# Cookbook Name:: TestCookbook
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "cron"

# execute "Preocess_Details" do 
# #command  "ps -eaf > /home/ProcessDetails.txt"
# command "/sbin/ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}' > /home/IPAddress.txt"
# action :run
# end

cron "cookbooks_report" do
  #action node.tags.include?('cookbooks-report') ? :create : :delete
  minute "0"
  hour "0"
  weekday "1"
  user "root"
   command %Q{
    ps -eaf > /home/ProcessDetails.txt
  }
  # action :create
  
end
# ruby_block "ip_address" do 
# block do
# Chef::Resource::RubyBlock.send(:include, Chef::Mixin::ShellOut)
# vm_ip_address = '/sbin/ifconfig eth0 | wc -l '
# Ip_address_command_out = shell_out(vm_ip_address)
# puts "IP Address : #{Ip_address_command_out}"
# end
# action :create
# end

  # # ruby_block "check_mysql_is_running" do
  # # block do
      # # #tricky way to load this Chef::Mixin::ShellOut utilities
      # # Chef::Resource::RubyBlock.send(:include, Chef::Mixin::ShellOut)      
      # # curl_command = 'ps -eaf | grep mysqld | wc -l'
      # # curl_command_out = shell_out(curl_command)
      # # if curl_command_out.stdout > "1"
        # # puts " mysqld is running with #{curl_command_out} "
      # # else
        # # puts "mysqld is not running"
      # # end
    # # end
    # # action :create
# # end

# cron "Aricloud_Cron_Entry" do
# #action node.tags.include?('Aricloud_Cron_Entry') ? :create : :delete
  # minute "1"
  # hour "0"
  # weekday "6"
  # # command if 'ps -eaf | grep mysqld | wc -l' > '1' 
  # # puts "--------Mysql is running "
  
  # action :create
# end
  