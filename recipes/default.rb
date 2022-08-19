#
# Cookbook:: mysnmp
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.

package %w(net-snmp net-snmp-utils)

service 'snmpd' do
  action [ :enable, :start ]
end
