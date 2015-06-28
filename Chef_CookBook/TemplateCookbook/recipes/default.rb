#
# Cookbook Name:: TemplateCookbook
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#



template "/home/SampleFileUsingTemplate" do
source "sample.erb"
user "root"
variables({
    :x_var => "are created using the template"
  })
end