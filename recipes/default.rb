#
# Cookbook:: myusers
# Recipe:: default
#
# Copyright:: 2018, Frank Manna, All Rights Reserved.
system_users = search("users", "platform:#{node['platform']}"

system_users.each do |user_data|
  #user resource
  user user_data['id'] do
    comment user_data['comment']
	action :create
  end
 end