<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2"/>
<globals/>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="lkj.20190711235336.1"><vh>Readme</vh></v>
<v t="ekr.20070615131954"><vh>Startup</vh>
<v t="ekr.20150302053516.3"><vh>@settings</vh>
<v t="mhw.20181210131101.1"><vh>@bool put-expansion-bits-in-leo-files = False</vh></v>
</v>
<v t="ekr.20070427110751"><vh>@chapters</vh></v>
<v t="maphew.20190712113401.1"><vh>@ignore</vh>
<v t="maphew.20190712113412.1"><vh>@button script-button</vh></v>
</v>
<v t="maphew.20190712112935.1"><vh>Buttons</vh>
<v t="maphew.20190712110256.1"><vh>@button Register Leo</vh>
<v t="mhw-debug-1081.20190216130451.1"><vh>imports</vh></v>
<v t="maphew.20130510011223.1645"><vh>docstring</vh></v>
<v t="mhw-debug-1081.20190227224730.1"><vh>get_leo_libpath</vh></v>
<v t="mhw-debug-1081.20190221070850.1"><vh>get_launch_leo</vh></v>
<v t="maphew.20130509185752.1607"><vh>register_leo</vh>
<v t="maphew.20130515233516.1659"><vh>&lt;&lt;filetype&gt;&gt;</vh></v>
<v t="maphew.20130515233516.1660"><vh>&lt;&lt;association&gt;&gt;</vh></v>
</v>
<v t="mhw-debug-1081.20190314005003.1"><vh>relaunch_elevated</vh></v>
<v t="mhw-debug-1081.20190314004045.1"><vh>get_my_path</vh></v>
<v t="maphew.20190712112653.1"><vh>Main</vh></v>
</v>
<v t="maphew.20190712112409.1"><vh>@button Unregister Leo</vh>
<v t="mhw-debug-1081.20190216130451.1"></v>
<v t="mhw-debug-1081.20190216145532.1"><vh>unregister_leo</vh></v>
<v t="mhw-debug-1081.20190314005003.1"></v>
<v t="mhw-debug-1081.20190314004045.1"></v>
<v t="maphew.20190712112633.1"><vh>Main</vh></v>
</v>
</v>
</v>
<v t="lkj.20190712001203.1"><vh>scripts</vh>
<v t="mhw-debug-1081.20190310203401.1"><vh>Windows</vh>
<v t="maphew.20130611235500.2658"><vh>@file register-leo.leox</vh></v>
<v t="maphew.20130611235500.2665"><vh>@file unregister-leo.leox</vh></v>
<v t="ekr.20140704052551.17941"><vh>Notes</vh>
<v t="maphew.20130510011223.1646"><vh>sample registry outcome</vh></v>
</v>
</v>
<v t="lkj.20190711232707.1"><vh>Linux</vh></v>
<v t="lkj.20190711232711.1"><vh>Mac</vh></v>
<v t="mhw.20190730140115.1"><vh>@button add-desktop-links</vh>
<v t="mhw.20190730142513.1"><vh>Notes</vh>
<v t="mhw.20190730140619.1"><vh>@@clean C:\tools\miniconda3\envs\leo-dev\Scripts\shortcutter__Terminal_at_leo_dev.bat</vh></v>
<v t="mhw.20190730141446.1"><vh>@@clean C:\tools\miniconda3\envs\leo-dev\Scripts\shortcutter__leo_exe__at__leo_dev_Scripts.bat</vh></v>
</v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="ekr.20070427110751"></t>
<t tx="ekr.20070615131954"></t>
<t tx="ekr.20140704052551.17941">@language md

## Test for Leo association
If Leo files are not registered with Windows the following commands will return "not found" errors.

    reg query hkcr\leo.file
    reg query hkcr\.leo
    reg query hkcr\.leox


Example of success:

    C:\&gt; reg query hkcr\leo.file
    
    HKEY_CLASSES_ROOT\leo.file
        (Default)    REG_SZ    Leo Editor File
    
    HKEY_CLASSES_ROOT\leo.file\DefaultIcon
    HKEY_CLASSES_ROOT\leo.file\Shell</t>
<t tx="ekr.20150302053516.3"></t>
<t tx="lkj.20190711232707.1">{placeholder for future functions}</t>
<t tx="lkj.20190711232711.1">{placeholder for future functions}</t>
<t tx="lkj.20190711235336.1">_Desktop integration buttons (under the menu bar)_

## All Platforms - Linux, Mac, Windows ##

[add-desktop-links] - Creates launch shortcuts in Desktop and Start Menu 


## Windows ## 

[Register-leo] - Creates registry keys for Leo file type and .leo file association. Afterwards .leo files will show Leo icon and double-clicking them will open in Leo Editor.

[Unregister-leo] - Removes the above

</t>
<t tx="lkj.20190712001203.1"></t>
<t tx="maphew.20130509185752.1607">def register_leo(pyexe, launchLeo, icon):
    '''Create registry key for Leo file type, set default icon and launch command    
    '''    
    g.es_print("Attempting to register leo filetype with Windows...")
    g.es_print("  Python:", pyexe)
    g.es_print("  Leo:", launchLeo)
    
    if g.os_path_exists(icon):
        g.es_print("  Found:", icon)
        &lt;&lt;filetype&gt;&gt;
        &lt;&lt;association&gt;&gt;
    else:
        g.es_print("  LeoDoc.ico not in expected location, can't continue.")  
</t>
<t tx="maphew.20130510011223.1645">'''Tell Windows how to handle .leo files, enables double clicking on them to open.

To run: in Leo make this the active node and press [Ctrl-B] (execute-script)
        
Requires elevated User Account Control (UAC) privileges.
See http://superuser.com/questions/88491/force-cmd-exe-to-run-as-admin/

Resources used:
   @url  http://stackoverflow.com/questions/2331690/how-to-set-a-icon-file-while-creating-file
   @url http://stackoverflow.com/questions/771689/how-can-i-set-an-icon-for-my-own-file-extension
   @url https://stackoverflow.com/questions/130763/request-uac-elevation-from-within-a-python-script
'''
</t>
<t tx="maphew.20130510011223.1646">This is what the resulting registry key should look like, once exported from
regedit. The translated hex code for Open Command is:
    
    "d:\Python27\python.exe" "C:\Users\Matt\Dropbox\apps\leo-editor\launchLeo.py" "%1" %*


```
Windows Registry Editor Version 5.00

[HKEY_CLASSES_ROOT\.leo]
@="Leo.File"

[HKEY_CLASSES_ROOT\.leox]
@="Leo.File"

[HKEY_CLASSES_ROOT\Leo.File]
@="Leo Editor File"

[HKEY_CLASSES_ROOT\Leo.File\DefaultIcon]
@="C:\\Users\\Matt\\Dropbox\\apps\\leo-editor\\leo\\Icons\\LeoDoc.ico"

[HKEY_CLASSES_ROOT\Leo.File\Shell]

[HKEY_CLASSES_ROOT\Leo.File\Shell\Open]

[HKEY_CLASSES_ROOT\Leo.File\Shell\Open\Command]
@=hex(2):22,00,64,00,3a,00,5c,00,50,00,79,00,74,00,68,00,6f,00,6e,00,32,00,37,\
  00,5c,00,70,00,79,00,74,00,68,00,6f,00,6e,00,2e,00,65,00,78,00,65,00,22,00,\
  20,00,22,00,43,00,3a,00,5c,00,55,00,73,00,65,00,72,00,73,00,5c,00,4d,00,61,\
  00,74,00,74,00,5c,00,44,00,72,00,6f,00,70,00,62,00,6f,00,78,00,5c,00,61,00,\
  70,00,70,00,73,00,5c,00,6c,00,65,00,6f,00,2d,00,65,00,64,00,69,00,74,00,6f,\
  00,72,00,5c,00,6c,00,61,00,75,00,6e,00,63,00,68,00,4c,00,65,00,6f,00,2e,00,\
  70,00,79,00,22,00,20,00,22,00,25,00,31,00,22,00,20,00,25,00,2a,00,00,00
```</t>
<t tx="maphew.20130515233516.1659">try:
    leoKey = CreateKey(HKEY_CLASSES_ROOT, "Leo.File")
    iconKey = CreateKey(leoKey, "DefaultIcon")
    shellKey = CreateKey(leoKey, "Shell")
    openKey = CreateKey(shellKey, "Open")
    cmdKey = CreateKey(openKey, "Command")

    SetValue(leoKey, None, REG_SZ, "Leo Editor File")
    SetValue(iconKey, None, REG_SZ, icon)
    
    if 'launchLeo.py' in launchLeo:
        SetValueEx(cmdKey, None, None, REG_EXPAND_SZ, '"{0}" "{1}" "%1" %*'.format(pyexe, launchLeo))
    else:
        SetValueEx(cmdKey, None, None, REG_EXPAND_SZ, '"{0}" "%1" %*'.format(launchLeo))
        
    for k in (leoKey, iconKey, shellKey, openKey, cmdKey):
        CloseKey(k)
        
    g.es_print("  Registered!")

except WindowsError as e:
    g.es_print("  Failed:", e)
</t>
<t tx="maphew.20130515233516.1660">try:
    leoKey = CreateKey(HKEY_CLASSES_ROOT, ".leo")
    SetValue(leoKey, None, REG_SZ, "Leo.File")
    # SetValue(leoKey, "Content Type", REG_SZ, "text/xml")  #creates a sub_key instead of a value :(
    CloseKey(leoKey)
    
    leoKey = CreateKey(HKEY_CLASSES_ROOT, ".leox")
    SetValue(leoKey, None, REG_SZ, "Leo.File")
    CloseKey(leoKey)
    
    g.es_print("  .leo, .leox files associated as 'Leo.File'")        

except WindowsError as e:
    g.es_print("  Failed:", e)
</t>
<t tx="maphew.20190712110256.1">@path win

@first # -*- coding: utf-8 -*-
@language python
@tabwidth -4
'''Add registry keys for Leo file type and .leo file association'''
@others

</t>
<t tx="maphew.20190712112409.1">@path win

@language python
@tabwidth -4
'''Remove registry key for Leo file type and .leo file association'''
@others

</t>
<t tx="maphew.20190712112633.1"># define script names and paths
scripts_path = os.path.realpath(os.path.join(leo.__path__[0], 'scripts/win'))
elevate = os.path.join(scripts_path, 'elevate.py')
this_script = get_my_path()

import ctypes, sys
if not ctypes.windll.shell32.IsUserAnAdmin():
    g.es_print("No admin privileges")
    relaunch_elevated(this_script)
else:
    g.es_print("--- Running unregister-leo Leo script")
    g.es_print("  Attempting to un-register leo filetype with Windows...")
    unregister_leo()
    g.es_print('--- end of script')</t>
<t tx="maphew.20190712112653.1"># define script names and paths
scripts_path = os.path.realpath(os.path.join(leo.__path__[0], 'scripts/win'))
elevate = os.path.join(scripts_path, 'elevate.py')
this_script = get_my_path()

g.es_print("--- Running register-leo Leo script")
import ctypes, sys
if not ctypes.windll.shell32.IsUserAnAdmin():
    g.es_print("No admin privileges")
    relaunch_elevated(this_script)
else:
    pyexe = g.sys.executable
    pywexe = pyexe.replace('python.exe', 'pythonw.exe')
    #launchLeo = g.os_path_finalize_join(g.computeLeoDir(), '../launchLeo.py')
    launchLeo = get_launch_leo()
    icon = "%s\Icons\LeoDoc.ico" % get_leo_libpath()
    
    # # 'pyexe' to launch GUI with a console window for messages
    # # 'pywexe' to launch GUI only (will lose messages that bypass log)
    
    register_leo(pywexe, launchLeo, icon)

g.es_print('--- end of script')</t>
<t tx="maphew.20190712112935.1">These buttons are just convenience wrappers around the `@file` scripts, by cloning the at-file nodes.

</t>
<t tx="maphew.20190712113401.1"></t>
<t tx="maphew.20190712113412.1"></t>
<t tx="mhw-debug-1081.20190216130451.1">#py2 shims
from __future__ import unicode_literals
from __future__ import print_function
from __future__ import division
from __future__ import absolute_import
from future import standard_library
standard_library.install_aliases()

import leo
import leo.core.leoGlobals as g
import os
import sys
import shutil
import subprocess
from winreg import *

</t>
<t tx="mhw-debug-1081.20190216145532.1">def unregister_leo():
    try:
        leoKey = OpenKey(HKEY_CLASSES_ROOT, "Leo.File")
        DeleteKey(leoKey, "Shell\\Open\\Command")
        DeleteKey(leoKey, "Shell\\Open")
        DeleteKey(leoKey, "Shell")
        DeleteKey(leoKey, "DefaultIcon")
        DeleteKey(HKEY_CLASSES_ROOT, "Leo.File")        
        # CloseKey(leoKey)
        g.es_print("  Leo file type has been removed from registry")
    except WindowsError as e:
        g.es_print("  Unregistering Leo file type failed: ", e)  

    try:
        DeleteKey(HKEY_CLASSES_ROOT, ".leo")
        DeleteKey(HKEY_CLASSES_ROOT, ".leox")
        g.es_print("  .leo, .leox file associations removed from registry")
    except WindowsError as e:
        g.es_print("  Removing .leo, leox associations failed: ", e)
</t>
<t tx="mhw-debug-1081.20190221070850.1">def get_launch_leo():
    '''Prefer leo exe script in PATH over launchLeo.py relative to Leo library'''
    leo_script = os.path.join(sys.exec_prefix, 'Scripts', 'leo.exe')
    if os.path.isfile(leo_script):
        return leo_script
    else:
        leo_script = os.path.join(get_leo_libpath(), '../launchLeo.py')
    if os.path.isfile(leo_script):
        return leo_script
    return None
</t>
<t tx="mhw-debug-1081.20190227224730.1">def get_leo_libpath():
    '''Return Leo's library path (ie: ./leo-editor/leo or PYTHONHOME/Lib/site-packages/leo)'''
    import leo
    return leo.__path__[0]
</t>
<t tx="mhw-debug-1081.20190310203401.1">Scripts only of interest when on Microsoft Windows platform.
@path win
</t>
<t tx="mhw-debug-1081.20190314004045.1">def get_my_path():
    '''Return full path of currently running script or executable
    
   Thanks to
        https://stackoverflow.com/questions/2632199/
            how-do-i-get-the-path-of-the-current-executed-file-in-python
        @jose-crespo-barrios, https://stackoverflow.com/a/44592299/14420
    '''
    import inspect
    filename = inspect.getframeinfo(inspect.currentframe()).filename
    return filename
</t>
<t tx="mhw-debug-1081.20190314005003.1">def relaunch_elevated(script):
    g.es_print('--- Relaunching and asking for elevated permissions')
    g.execute_shell_commands(['&amp;{} {} {}'.format(
        sys.executable,
        elevate,
        script)])
    g.es_print('---')
    
</t>
<t tx="mhw.20181210131101.1">True (recommended):
    Write "E" attribute bits in &lt;v&gt; elements.
    Leo outlines will record the expansion state of all nodes.
    
False: (Good for files like unitTest.leo)
    Suppress "E" attribute bits in &lt;v&gt; elements.
    Only the ancestors of the presently selected node will
    be expanded when Leo opens an outline.</t>
<t tx="mhw.20190730140115.1">'''naive implementation of https://github.com/kiwi0fruit/shortcutter'''
import sys



import platform
from shortcutter import ShortCutter
sc = ShortCutter(raise_errors=True, error_log=sys.stderr, activate=False)





leocmd = "leo"
if platform.system() == 'Windows':
    leocmd = "leo-messages"

desktop = sc.create_desktop_shortcut(leocmd, shortcut_name="Leo Editor")
menu = sc.create_menu_shortcut(leocmd, shortcut_name="Leo Editor")
term = sc.create_shortcut_to_env_terminal()

if desktop:
    g.es_print("Created shortcut: {} - {}".format(desktop[0],desktop[2]))

if menu:
    g.es_print("Created shortcut: {} - {}".format(menu[0],menu[2]))
    



@first # -*- coding: utf-8 -*-
@language python
@tabwidth -4
</t>
<t tx="mhw.20190730140619.1">@language batch
@echo off
set "PATH=c:\tools\miniconda3\Scripts;%PATH%"
set PYTHONNOUSERSITE=1
call "c:\tools\miniconda3\Scripts\activate.bat" "leo-dev"
set "u=chcp 65001 &amp;&amp; set PYTHONIOENCODING=utf-8"
set "a=chcp 1252 &amp;&amp; set PYTHONIOENCODING="
set "b=set LANG=C.UTF-8 &amp;&amp; set PYTHONIOENCODING=utf-8 &amp;&amp; "%PROGRAMFILES%\Git\git-bash.exe""
cd /d %USERPROFILE%
cmd /k
</t>
<t tx="mhw.20190730141446.1">@language batch
@echo off
set PYTHONNOUSERSITE=1
call "c:\tools\miniconda3\Scripts\activate.bat" "leo-dev"
"c:\tools\miniconda3\envs\leo-dev\Scripts\leo.exe" %*
call "c:\tools\miniconda3\Scripts\deactivate.bat"
</t>
<t tx="mhw.20190730142513.1">@
Example straight from docs creates a .lnk file like:
    
    Name: Terminal at leo-dev
    Command: C:\tools\miniconda3\envs\leo-dev\Scripts\shortcutter__Terminal_at_leo_dev.bat

and the bat file:
    
    @echo off
    set "PATH=c:\tools\miniconda3\Scripts;%PATH%"
    set PYTHONNOUSERSITE=1
    call "c:\tools\miniconda3\Scripts\activate.bat" "leo-dev"
    set "u=chcp 65001 &amp;&amp; set PYTHONIOENCODING=utf-8"
    set "a=chcp 1252 &amp;&amp; set PYTHONIOENCODING="
    set "b=set LANG=C.UTF-8 &amp;&amp; set PYTHONIOENCODING=utf-8 &amp;&amp; "%PROGRAMFILES%\Git\git-bash.exe""
    cd /d %USERPROFILE%
    cmd /k

------
Using `leo` instead of Python or `Leo Editor`:

C:\tools\miniconda3\envs\leo-dev\Scripts\shortcutter__leo_exe__at__leo_dev_Scripts.bat

Contents:
    @language batch
    @echo off
    set PYTHONNOUSERSITE=1
    call "c:\tools\miniconda3\Scripts\activate.bat" "leo-dev"
    "c:\tools\miniconda3\envs\leo-dev\Scripts\leo.exe" %*
    call "c:\tools\miniconda3\Scripts\deactivate.bat"

----
passing `activate=False` bypasses creation of .bat file, this is what we need. It Just Works. :-)

    C:\tools\miniconda3\envs\leo-dev\Scripts\leo-messages.exe


-----
# What's Next

 - Record location of the created shortcuts so they can be removed later with a script
 - Add icons (this will be more work as Shortcutter doesn't have that concept yet)

@c</t>
</tnodes>
</leo_file>
