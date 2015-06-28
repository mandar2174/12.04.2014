#
# Cookbook Name:: FileOperation
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


file "/home/FileOperation" do
owner "root"
group "root"
mode "0777"
action :create_if_missing
end


breakpoint "before ruby_block 'insert_line'" do
  action :break
end

ruby_block "insert_line" do
  block do
    file = Chef::Util::FileEdit.new("/home/FileOperation")
    file.insert_line_if_no_match("/www.aricent.com/", "www.aricent.com")
    file.write_file
  end
end


breakpoint "after ruby_block 'insert_line'" do
  action :break
end

#(Object) search_file_replace(regex, replace) 


breakpoint "before ruby_block 'Search_and_Replace'" do
  action :break
end

ruby_block "Search_and_Replace" do
  block do
    file = Chef::Util::FileEdit.new("/home/FileOperation")
    file.search_file_replace("com", "org")
    file.write_file
  end
end

breakpoint "after ruby_block 'Search_and_Replace'" do
  action :break
end
# (Object) search_file_delete(regex) 
# ruby_block "Search_and_Delete" do
  # block do
    # file = Chef::Util::FileEdit.new("/home/FileOperation")
    # file.search_file_delete("user")
    # file.write_file
  # end
# end

# (Object) search_file_delete_line(regex) 
ruby_block "Search_and_Delete" do
  block do
    file = Chef::Util::FileEdit.new("/home/FileOperation")
    file.search_file_delete_line("user")
    file.write_file
  end
end
