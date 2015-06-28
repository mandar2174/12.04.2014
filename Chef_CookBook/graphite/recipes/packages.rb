#
# Cookbook Name:: graphite
# Recipe:: packages
#
# Copyright 2014, Heavy Water Software Inc.
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

dep_packages = case node['platform_family']
               when 'debian'
                 packages = %w{ python-cairo-dev python-django python-django-tagging python-rrdtool }

                 # Optionally include memcached client
                 if node['graphite']['web']['memcached_hosts'].length > 0
                   packages += %w{python-memcache} + packages
                 end

                 packages
               when 'rhel', 'fedora'
                 #packages = %w{ pycairo-devel python-devel mod_wsgi python-sqlite2 python-zope-interface }

                 # Include bitmap packages (optionally)
                 # if node['graphite']['web']['bitmap_support']
                   # if node['platform'] == 'amazon'
                     # #packages += %w{bitmap}
					 # packages = %w{bitmap}
                   # else
                     # #packages += %w{bitmap bitmap-fonts}
					 # packages = %w{bitmap bitmap-fonts}
                   # end
                 # end

                 # # Optionally include memcached client
                 # if node['graphite']['web']['memcached_hosts'].length > 0
                   # packages += %w{python-memcached}
                 # end

                  packages
               end
# dep_packages.each do |pkg|
  # package pkg do
    # action :install
  # end
  
   yum_package 'django' do
  #  version '1.3.1-1.el6'
    action :install
  end
  
  yum_package 'django-tagging' do
    # version '0.3.2'
    action :install
  end
  
  yum_package 'pycairo-devel' do
  #version '1.8.6'
    action :install
  end

  yum_package 'python-devel' do
  #version '2.6'
   action :install
end
  yum_package 'mod_wsgi' do
  #version '3.3'
   action :install
  end

  yum_package 'python-sqlite2' do
 action :install
  end

  yum_package 'python-zope-interface' do
   action :install
  end
  
  yum_package 'bitmap' do
   action :install
  end
	
 yum_package 'bitmap-fonts' do
   action :install
  end
  
	yum_package 'python-memcached' do
   action :install
  end

