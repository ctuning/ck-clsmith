#
# Collective Knowledge (CK wrapper for OpenCL bug reports from Imperial)
#
# Developer: Grigori Fursin, Grigori.Fursin@cTuning.org, http://fursin.net
#

cfg={}  # Will be updated by CK (meta description of this module)
work={} # Will be updated by CK (temporal data)
ck=None # Will be updated by CK (initialized CK kernel) 

# Local settings

form_name='wa_web_form'
onchange='document.'+form_name+'.submit();'

hextra='<i><center>\n'
hextra+='This is an on-going long-term project. Please check <a href="https://github.com/mc-imperial/shader-compiler-bugs">GitHub repo</a> for more details!'
hextra+='</center></i>\n'
hextra+='<br>\n'

selector=[{'name':'GPU', 'key':'gpu_name'},
          {'name':'Platform', 'key':'plat_name'},
          {'name':'OS', 'key':'os_name'}]

##############################################################################
# Initialize module

def init(i):
    """

    Input:  {}

    Output: {
              return       - return code =  0, if successful
                                         >  0, if error
              (error)      - error text if return > 0
            }

    """
    return {'return':0}

##############################################################################
# show results

def show(i):
    """
    Input:  {
               (crowd_module_uoa) - if rendered from experiment crowdsourcing
               (crowd_key)        - add extra name to Web keys to avoid overlapping with original crowdsourcing HTML
               (crowd_on_change)  - reuse onchange doc from original crowdsourcing HTML
            }

    Output: {
              return       - return code =  0, if successful
                                         >  0, if error
              (error)      - error text if return > 0
            }

    """

    import os

    st=''

    cmuoa=i.get('crowd_module_uoa','')
    ckey=i.get('crowd_key','')

    conc=i.get('crowd_on_change','')
    if conc=='':
        conc=onchange

    hi_uid=i.get('highlight_uid','')


    # Check host URL prefix and default module/action
    rx=ck.access({'action':'form_url_prefix',
                  'module_uoa':'wfe',
                  'host':i.get('host',''), 
                  'port':i.get('port',''), 
                  'template':i.get('template','')})
    if rx['return']>0: return rx
    url0=rx['url']
    template=rx['template']

    url=url0
    action=i.get('action','')
    muoa=i.get('module_uoa','')

    st=''

    url+='wcid='+cfg['module_deps']['experiment']+':explore-clsmith-datasets-any&table_sort=2'

    h='<center>\n'

    h+='<h2>Aggregated results for OpenCL compiler bugs</h2>\n'

    h+='<br><br>'

    h+='[ <a href="'+url+'">Click here to see results via CK experiment browser (beta)</a> ]'

    h+='<br><br>'

    h+='[ <a href="https://github.com/ctuning/ck-clsmith">Click here to view CK-CLSmith at GitHub</a> ]'

    h+='<br><br><br><br>'

    h+='</center>'

    return {'return':0, 'html':h, 'style':st}

##############################################################################
# open dashboard

def dashboard(i):
    """
    Input:  {
            }

    Output: {
              return       - return code =  0, if successful
                                         >  0, if error
              (error)      - error text if return > 0
            }

    """

    i['action']='start'
    i['cid']=cfg['module_deps']['experiment']+':explore-clsmith-datasets-any'
    i['browser']='yes'
    i['module_uoa']=cfg['module_deps']['web']
    i['template']='ogl-bug'
    i['extra_url']='&table_sort=2'

    return ck.access(i)
