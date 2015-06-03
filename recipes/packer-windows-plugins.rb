include_recipe "ark"

ark 'packer-windows-plugins' do
  url "#{node[:packer_windows_plugin][:url_base]}/v#{node[:packer_windows_plugin][:version]}/#{node[:os]}_#{node[:packer][:arch]}.zip"
  path "/usr/local/packer-#{node[:packer][:version]}"
  action :put
end
