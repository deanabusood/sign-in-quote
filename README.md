# sign-in-quote 🗣️📖
A python program that gives the user a random quote prompt after signing into Windows!

Each time this program runs, it pulls quote data from an API and passes it as arguments to a batch script 💻<br>
The batch script elevates Powershell and runs a command to update value data in the Registry Editor. 
<br>

## Requirements ⚠️
Run `pip install requests` (or `pip3 install requests` for python3) 

Web source: https://pypi.org/project/requests/ to install the requests library
<br>
## Demo Images 🖼️

<p align = center>
   <img src="images/quote1.png" height=auto width="750">
   <img src="images/quote2.png" height=auto width="750">
</p>

## Revert to Default 🧑‍🔧
### **To remove any changes made to the Registry Editor, follow the steps below.**
<br>
Open the Command Prompt (cmd) or Windows PowerShell as administrator, then run commands:<br><br>

`reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v legalnoticecaption /t REG_SZ /d "" /f`

`reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v legalnoticetext /t REG_SZ /d "" /f`
