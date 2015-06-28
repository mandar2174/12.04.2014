#
# Cookbook Name:: cron
# Recipe:: default
#
# Copyright 2010-2013, Opscode, Inc.
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

include_recipe "cron"


cron_d "cookbooks_report" do
  #action node.tags.include?('cookbooks-report') ? :create : :delete
  minute "0"
  hour "0"
  weekday "1"
  user "root"
   command %Q{
    ps -eaf > /home/ProcessDetails.txt
  }
   action :create
  
end

# package 'cron' do
  # package_name case node['platform_family']
               # when 'rhel', 'fedora'
                 # node['platform_version'].to_f >= 6.0 ? 'cronie' : 'vixie-cron'
               # when 'solaris2'
                 # 'core-os'
               # end
# end

# service 'cron' do
  # service_name 'crond' if platform_family?('rhel', 'fedora')
  # action [:enable, :start]
# end



# cron_d "daily-usage-report" do
  # minute 1
  # hour 23
  # weekday 6
  # command %Q{
    # cd /home/  
	# echo "welcome to cron"
	# echo $JAVA_HOME
    # #`mkdir Sample`
     # }
	 # #./Process_Info.sh > Process_Info.txt
  # #command 'ps -eaf > /home/Process_Info.txt'
  
  # user "root"
  # action :create
# end