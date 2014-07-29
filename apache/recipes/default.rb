package "httpd" do
  action :remove
end

package "httpd24" do
  action :install
end

package "httpd24-tools" do
  action :install
end

service "httpd" do
  action [ :enable, :start ]
  supports :status => true, :restart => true, :reload => true
end

file "/var/www/html/index.html" do 
  content "OK"
  owner "apache"
  group "apache"
  mode 00755
  action :create
end

