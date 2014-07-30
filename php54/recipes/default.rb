package "php" do
   action :remove
end

package "php54" do
   action :upgrade
end

file "/home/ec2-user/hello.txt" do
  action :create
end