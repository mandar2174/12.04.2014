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

application 'bookshop' do
  path         '/var/lib/tomcat6/webapps'
  owner        node['tomcat']['user']
  group        node['tomcat']['group']
  repository   '/home/virtualnode/repository/bookshop.war'
 # revision     '6facd94e958ecf68ffd28be371b5efcb5584c885b5f32a906e477f5f62bdb518-1'
    scm_provider Chef::Provider::File::Deploy

java_webapp do
  # application_java do
   # database_master_role 'database_master'
  
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
