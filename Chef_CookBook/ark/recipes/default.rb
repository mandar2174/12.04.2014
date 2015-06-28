#
# Cookbook Name:: ark
# Recipe:: default
#
# Author:: Bryan W. Berry <bryan.berry@gmail.com>
# Copyright 2012, Bryan W. Berry
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

#ark 'test_put' do
 # url  'https://github.com/bryanwb/chef-ark/raw/master/files/default/foo.tar.gz'
 
# checksum '5996e676f17457c823d86f1605eaa44ca8a81e70d6a0e5f8e45b51e62e0c52e8'
 # owner 'root'
  #group 'root'
  #  action :put
#end

Array(node['ark']['package_dependencies']).each do |pkg|
  package pkg
end
