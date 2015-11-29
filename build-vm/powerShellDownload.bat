echo "Downloading the tool from intrinsarc.com"
powershell -Command "(New-Object Net.WebClient).DownloadFile('http://intrinsarc.com/downloads/evolve-1.0.2.zip', 'C:\Users\vagrant\Desktop\package.zip')"
powershell -Command "jar xf 'C:\Users\vagrant\Desktop\package.zip'"


echo "Unzipping the tool"
powershell.exe -nologo -noprofile -command "& { Add-Type -A 'System.IO.Compression.FileSystem'; [IO.Compression.ZipFile]::ExtractToDirectory('C:\Users\vagrant\Desktop\package.zip', 'C:\Users\vagrant\Desktop');}"


echo "Downloading the text files"
@powershell -Command "(New-Object Net.WebClient).DownloadFile('https://www.dropbox.com/s/nz9vud7h4u1kgsk/ReadMe.txt?dl=1', '%USERPROFILE%\Desktop\Readme.txt')"
@powershell -Command "(New-Object Net.WebClient).DownloadFile('https://www.dropbox.com/s/dgewswqssjb6579/license.txt?dl=1', '%USERPROFILE%\Desktop\License.txt')"
@powershell -Command "(New-Object Net.WebClient).DownloadFile('https://www.dropbox.com/s/mu5826vitgk7j18/installation.txt?dl=1', '%USERPROFILE%\Desktop\Installation.txt')"

echo "Creating shortcut"
@echo off

@echo off
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%USERPROFILE%\Desktop\evolve.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "C:\Users\vagrant\Desktop\evolve-1.0.2\evolve.exe" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs

echo "Deleting the extra files"
@powershell -Command "Remove-Item C:\Users\vagrant\Desktop\package.zip"


echo "Adding evolve to startup"
copy %USERPROFILE%\Desktop\evolve.lnk %PROGRAMDATA%\Microsoft\Windows\"Start Menu"\Programs\Startup

(echo [InternetShortcut]
echo URL=https://youtu.be/9V78xqnMcBg
echo IconIndex=0) >"%userprofile%\desktop\Evolve Demo Video.url"


