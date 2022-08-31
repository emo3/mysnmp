# mysnmp

Add a SNMP daemon to a node.<br/>
This cookbook is used to test out both functionalities
of CheckMK agent and SNMP monitoring.<br/>

1) The agent monitoring is automated and should function without
   any interaction from the user.<br/>
2) The SNMP monitoring is manual. Files found on /tmp<br/>
   A) Add device to be monitored. (add-checkmks-snmp.py)<br/>
   B) Activate Node. (activate-checkmks.py)<br/>
   C) Discover Services. (discover-checkmks2.py)<br/>
   D) Activate Services on Node. (activate-checkmks.py)<br/>

Usage:<br/>
   Add to Policyfile.rb run list:<br/>
   1) Install Agent on node to monitored by CheckMK server;<br/>
     run_list 'mysnmp::default', 'checkmka::agent-cmk'
   2) Add scripts to add node to be monitored by CheckMK server via SNMP;<br/>
     run_list 'mysnmp::default', 'checkmka::agent-cmk-snmp'

Environmental variables to be defined:<br/>
  CMK_TOKEN = The token value taken from the CheckMK Server.<br/>
  CMA_IP    = The Nat'ed fixed IP address of the node to be monitored.<br/>
  CMK_IP    = The Nat'ed fixed IP address of the CheckMK Server.
