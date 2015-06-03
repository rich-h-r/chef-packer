include_recipe "ark"

ark 'packer' do
  url "#{node[:packer_windows_plugin][:url_base]}/v#{node[:packer_windows_plugin][:version]}/#{node[:os]}_#{node[:packer][:arch]}.zip"
  version "#{node[:packer_windows_plugin][:version]}"
  path "/usr/local"
  creates "packer-communicator-winrm"
  action :dump
end
