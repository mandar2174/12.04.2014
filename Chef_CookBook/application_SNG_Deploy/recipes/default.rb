# include_recipe "install-mysql::default"

include_recipe "application_SNG_Deploy::sng_config"
include_recipe "application_SNG_Deploy::users"
include_recipe "application_SNG_Deploy::install"
# include_recipe "sng-database-dump::default"

 bash "start-jboss" do 
 code <<-EOH
	service jboss start
 EOH
 end 
