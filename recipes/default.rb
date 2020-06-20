#
# Cookbook:: edr_bukkit_minecraft
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

directory node['edr_bukkit_minecraft']['home'] do
  action :create
  recursive true
end

remote_file "#{node['edr_bukkit_minecraft']['home']}/spigot-1.15.2.jar" do
  source 'https://cdn.getbukkit.org/spigot/spigot-1.15.2.jar'
  action :create
end

# cookbook_file "#{node['edr_bukkit_minecraft']['home']}/run.bat" do
#   action :create
# end

# %w(banned-ips banned-players blacklist ops whitelist).each do |j|
#   cookbook_file "#{node['edr_bukkit_minecraft']['home']}/#{j}.json" do
#     source "#{j}.json"
#     action :create
#   end
# end

# %w(bukkit commands help permissions).each do |y|
#   cookbook_file "#{node['edr_bukkit_minecraft']['home']}/#{y}.yml" do
#     source "#{y}.yml"
#     action :create
#   end
# end

# execute 'install bukkit' do
#   command "java -Xmx2018m -jar #{node['edr_bukkit_minecraft']['home']}//craftbukkit-1.15.2.jar" 
#   action :run
# end

# cookbook_file "#{node['edr_bukkit_minecraft']['home']}/eula.txt" do
#   source 'eula.txt'
#   action :create
# end
