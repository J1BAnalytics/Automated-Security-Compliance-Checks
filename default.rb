# Cookbook Name:: security_compliance
# Recipe:: default

# Example: Apply basic security configurations
# Modify this recipe according to specific security requirements

# Ensure the latest security patches are installed
package 'update_security_patches' do
  action :upgrade
end

# Harden SSH configuration
template '/etc/ssh/sshd_config' do
  source 'sshd_config.erb'
  owner 'root'
  group 'root'
  mode '0644'
  notifies :restart, 'service[ssh]'
end

service 'ssh' do
  action :nothing
end
