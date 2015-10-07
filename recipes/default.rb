#
# Cookbook: confd-iptables
# License: Apache 2.0
#
# Copyright 2015, Bloomberg Finance L.P.
#
include_recipe 'iptables::default'

confd_template '/etc/confd/iptables.rules' do
  source 'iptables.rules.tmpl'
  keys "/hosts/#{node['ipaddress']}"

  check_command "/usr/sbin/iptables-restore -T confd -t #{path}"
  reload_command "/usr/sbin/iptables-restore -T confd #{path}"

  notifies :restart, 'confd_service[confd]', :delayed
  only_if { node['confd-iptables']['enable_iptables'] }
end

confd_template '/etc/confd/ip6tables.rules' do
  source 'iptables.rules.tmpl'
  keys "/hosts/#{node['ip6address']}"

  check_command "/usr/sbin/ip6tables-restore -T confd -t #{path}"
  reload_command "/usr/sbin/ip6tables-restore -T confd #{path}"

  notifies :restart, 'confd_service[confd]', :delayed
  only_if { node['confd-iptables']['enable_ip6tables'] }
end

include_recipe 'confd::default'
