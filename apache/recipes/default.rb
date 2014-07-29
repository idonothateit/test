package "httpd" do
   action :upgrade
   version "2.2.27"
end

file "/var/www/html/index.html" do 
   content "OK"
   owner "apache"
   group "apache"
   mode 00755
   action :create
end

