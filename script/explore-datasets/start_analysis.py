#
# Developer: Grigori Fursin, Grigori.Fursin@cTuning.org, http://fursin.net
#

import os
import sys
import ck.kernel as ck

sep='***************************************************************************'

# Get experimental results from CK
ii={"action":"get",
    "module_uoa":"experiment",

    "data_uoa_list":[
      "explore-clsmith-datasets-any" 
    ],

    "flat_keys_list":[
      "##choices#data_uoa", 
      "##choices#dataset_uoa", 
      "##choices#dataset_file", 
      "##choices#host_os", 
      "##choices#target_os", 
      "##characteristics#run#run_time_state#opencl_platform", 
      "##characteristics#run#run_time_state#opencl_device", 
      "##characteristics#run#run_time_state#opencl_device_units", 
      "##features#compiler_version#raw@0", 
      "##choices#cmd_key",
      "##characteristics#run#return_code",
      "##characteristics#run#run_time_state#positive_results",
      "##characteristics#run#run_time_state#negative_results"
    ],
    "flat_keys_list_ext":"#min",

    "ignore_graph_separation":"yes"}

r=ck.access(ii)
if r['return']>0: ck.err(r)

table=r['table'].get('0',[])
real_keys=r.get('real_keys',[])

# Print failures
for q in table:
    ck.out('')
    ck.out('Dataset  UOA:    '+str(q[1]))
    ck.out('Dataset file:    '+str(q[2]))
    ck.out('Target OS:       '+str(q[4]))
    ck.out('OpenCL platform: '+str(q[5]))
    ck.out('OpenCL device:   '+str(q[6]))
    ck.out('Compiler:        '+str(q[8]))

# Convert to csv
ii={"action":"convert_table_to_csv",
    "module_uoa":"experiment",
    "table":table,
    "keys":real_keys,
    "file_name":"start_analysis_tmp.csv"}

r=ck.access(ii)
if r['return']>0: ck.err(r)

# Finish

ck.out('')
ck.out('Thank you for using CK!')

exit(0)

