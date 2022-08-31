# mysnmp

Add a SNMP daemon to a node.<br/>
This cookbook is used to test out both functionalities
of CheckMK agent and SNMP monitoring.<br/>

1) The agent monitoring is automated and should function without
   any interaction from the user.<br/>
2) The SNMP monitoring is manual.<br/>
   A) Add device to be monitored.<br/>
   B) Activate Node.<br/>
   C) Discover Services.<br/>
   D) Activate Services on Node.<br/>

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
