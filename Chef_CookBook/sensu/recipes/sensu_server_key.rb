

######### creating files ##########

template "/etc/sensu/ssl/cert.pem" do
  source "sensu_server_certificate.erb"
  mode 0777
  owner "root"
  group "root"
end

template "/etc/sensu/ssl/key.pem" do
  source "sensu_server_key.erb"
  mode 0777
  owner "root"
  group "root"
end