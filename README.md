<h1>DISM & SFC Utility</h1>

 ### [Preview Screenshots]

 
<p align="center">
The script that was used to combine the two troubleshooting tools: <br/>
<img src="https://i.imgur.com/kgLltxm.jpg" height="80%" width="80%" alt="Screenshot_of_Script"/>
<br />
<br />

<h2>Description</h2>
This script will run the System File Checker (sfc) and then wait until the process is completely done using the "tasklist" command. After that, it will run the Deployment Image Servicing and Management (DISM) tool with the "restore health" option and wait until the process is completely done, then reboot the system. The "@echo off" command at the top of the script will prevent the commands from being displayed in the command prompt as they are executed.
Please note that the system will reboot after DISM process is finished, so make sure to save any unsaved work before running it.
<br />


<h2>Languages and Utilities Used</h2>

- <b>Batch Scripting</b> 



       
<!--Observe the wiped disk:  <br/>
<img src="https://i.imgur.com/AeZkvFQ.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
</p>
--!>
<!--
 ```diff
- text in red
+ text in green
! text in orange
# text in gray
@@ text in purple (and bold)@@
```
--!>
