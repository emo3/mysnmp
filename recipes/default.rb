#
# Cookbook:: mysnmp
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.

package %w(net-snmp net-snmp-utils)

node.default['snmp']['full_systemview'] = true

include_recipe 'snmp::default'

service 'snmpd' do
  action [ :enable, :start ]
end
