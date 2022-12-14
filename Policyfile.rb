# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile/

# A name that describes what the system you're building with Chef does.
name 'mysnmp'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'mysnmp::default', 'checkmka::agent-cmk-snmp'

# Specify a custom source for a single cookbook:
cookbook 'mysnmp',   path: '.'
cookbook 'checkmka', git: 'https://github.com/emo3/checkmka.git'
