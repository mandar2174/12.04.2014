######### creating files ##########

template "/etc/sensu/conf.d/api.json" do
  source "api.json.erb"
  mode 0777
  owner "root"
  group "root"
end

template "/etc/sensu/conf.d/check_cron.json" do
  source "check_cron.json.erb"
  mode 0777
  owner "root"
  group "root"
end######### creating files ##########

template "/etc/sensu/conf.d/client.json" do
  source "client.json.erb"
  mode 0777
  owner "root"
  group "root"
end

template "/etc/sensu/conf.d/dashboard.json" do
  source "dashboard.json.erb"
  mode 0777
  owner "root"
  group "root"
end
######### creating files ##########

template "/etc/sensu/conf.d/rabbitmq.json" do
  source "rabbitmq.json.erb"
  mode 0777
  owner "root"
  group "root"
end

template "/etc/sensu/conf.d/redis.json" do
  source "redis.json.erb"
  mode 0777
  owner "root"
  group "root"
end