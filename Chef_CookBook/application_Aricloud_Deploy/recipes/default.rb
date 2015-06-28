#
# Cookbook Name:: application
# Recipe:: default
#
# Copyright:: 2012, Opscode, Inc <legal@opscode.com>
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
# Empty placeholder recipe, use the LWRPs, see README.md.


####################Create the folder for copying the war file from remote######
 %w[home/virtualnode home/virtualnode/repository/].each do |path|
  directory path do
    owner "root"
    group "root"
	action :create
  end
end
 
 ###################Copy the remote war file to folder#########
 remote_file "/home/virtualnode/repository/aricloud.war" do
  source "http://10.203.251.142:8888/root/repository/aricloud.war"
  mode 00777
  
  end



application 'aricloud' do
  path         '/var/lib/tomcat6/webapps'
  owner        node['tomcat']['user']
  group        node['tomcat']['group']
 


  # Deployment the war file from SVN/GIT
  #repository   'http://10.203.251.142:8888/repository/Project_WarFile/aricloud.war'
  #repository   'http://10.203.251.142:8888/root/repository/bookshop.war'
  #svn_username "bgh33503"
  #svn_password "OmkarMayur2174"
   
  #scm_provider Chef::Provider::RemoteFile::Deploy
   
   
  #For File Deploy uncomment the following 2 line
  repository   '/home/virtualnode/repository/aricloud.war'
  scm_provider Chef::Provider::File::Deploy
  
  #subversion "SVN War" do
  #repository "http://bghux007.bgh.aricent.com/repos/AriCloud/Bookshop/target/bookshop.war"
   #revision "HEAD"
  #destination "/home/virtualnode1/repository/"
  #svn_username 'bgh33503'
  #svn_password  'OmkarMayur2174'
  
  #action :export
#end 

java_webapp do
     database do
      driver     'com.mysql.jdbc.Driver'
      database   'bookshop'
      port       3306
      username   'root'
      password   'root'
      max_active 1
      max_idle   2
      max_wait   3
    end
  end

  
  tomcat
end


%w[ home/virtualnode/repository/ home/virtualnode].each do |path|
  directory path do
  recursive true
    action :delete
  end
end
 

