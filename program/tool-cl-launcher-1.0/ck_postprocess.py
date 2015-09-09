#
# Collective Knowledge (CK)
#
# See CK LICENSE.txt for licensing details.
# See CK Copyright.txt for copyright details.
#
# Developer: Grigori Fursin
#

import json

d={}

print ('  (processing OpenME output ...)')

# Preload tmp-ck-timer.json from OpenME if there
exists=True
try:
  f=open('tmp-ck-timer.json', 'r')
except Exception as e:
  exists=False
  pass

if exists:
   try:
     s=f.read()
     d=json.loads(s)
   except Exception as e:
     exists=False
     pass

   if exists:
      f.close()

d['post_processed']='yes'

# Try to read vector of values
exists=True
try:
  f=open('tmp-output.txt', 'r')
except Exception as e:
  exists=False
  pass

if exists:
   try:
     s=f.read()
   except Exception as e:
     exists=False
     pass

   if exists:
      f.close()

      if len(s)>0:
         if s[-1]==',': s=s[:-1]

         d['result_string']=s

# Write CK json
f=open('tmp-ck-timer.json','wt')
f.write(json.dumps(d, indent=2, sort_keys=True)+'\n')
f.close()
