
package 'unzip' do 
action :install
end

#cookbook_file 'http://10.203.251.142:9999/root/repository/sensu_client_checks.zip' do 
remote_file '/etc/sensu/plugins/sensu_client_checks.zip' do 
source 'http://10.203.238.137:8888/home/Download/sensu_client_checks.zip' 
mode '0755' 
owner 'root' 
group 'root'
end 

 bash "extracting files" do 
 cwd "/etc/sensu/plugins/" 
 code <<-EOH
 unzip sensu_client_checks.zip
 chmod 777 *
 EOH
 end 
 
 
