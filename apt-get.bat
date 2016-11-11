@rem //-- Author: Daniel Romischer (daniel@romischer.com)
@echo off

goto :start

:Usage
echo Wrapper for Chocolatey (just to make things even easier)
echo.
echo    Syntax:  apt-get [command]
echo.
echo		Avail. Commands:
echo.
echo		INIT	- *always call this first on a brand new system* 
echo.
echo		find	- *search choco* 
echo.
echo		update	- *update all choco packages* 
echo.
echo		DEFAULT	- Install the default Tools (~200Mb)
echo.
echo		NET	- Install network Tools 
echo.
echo		DEV	- Install developer Tools 
echo.
echo.
echo		Suggestions:
echo.
echo		ENT	- Echo Entertainment suggestions
echo.
echo		Cloud	- Echo Cloud suggestions
echo.
echo		VS	- Visual Studio suggestions
echo.
echo		DevO	- DevOther suggestions
echo.
echo		O	- Other suggestions
echo.
echo.
echo		Example searches:
echo.
echo    Example:	apt-get INIT
echo.
goto :Exit

:INIT
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
mkdir c:\tools
mklink /d c:\tools\bin C:\ProgramData\Chocolatey\bin
mklink /d c:\tools\lib C:\ProgramData\Chocolatey\lib
goto :Exit

:NET
echo "NET INSTALL INITIATED"
choco install angryip -y
mklink /d c:\tools\angryip "C:\Program Files\Angry IP Scanner\"

choco install tcpview -y
mklink /d c:\tools\tcpview C:\ProgramData\Chocolatey\lib\tcpview\Tools

choco install wireshark -y
mklink /d c:\tools\wireshark "C:\Program Files\Wireshark\"

choco install clumsy -y
mklink /d c:\tools\clumsy C:\ProgramData\Chocolatey\lib\clumsy\Tools

choco install httpnetworksniffer -y
mklink /d c:\tools\httpnetworksniffer C:\ProgramData\Chocolatey\lib\httpnetworksniffer\Tools

REM tcp port-forwarder
choco install tcptunnel -y --allow-empty-checksums
mklink /d c:\tools\tcptunnel C:\ProgramData\Chocolatey\lib\tcptunnel\Tools

choco install tcplogview -y
mklink /d c:\tools\tcplogview C:\ProgramData\Chocolatey\lib\tcplogview\Tools

choco install fiddler -y
mklink /d c:\tools\Fiddler "C:\Program Files (x86)\Fiddler2\"

REM bench mark http
choco install superbenchmarker -y

choco install glasswire -y

REM choco install trafficwatcher -y REM HAD PRoblems after install (hanging), but installed, don't know why
REM (above) then worked once i hit keyboard ctrl+x sequence - odd
REM choco install networkmonitor -y REM HAD PRoblems after install (hanging), but installed, don't know why
REM choco install netbalancer -y REM HAD PRoblems after install (hanging), but installed, don't know why
goto :Exit

:find
choco list %1 %2 %3 %4 %5 %6 %7 %8 %9
goto :Exit

:update
echo "UPDATE INITIATED"
choco upgrade all
goto :Exit

:DEV
echo "DEV INSTALL INITIATED"
choco install php -y --allow-empty-checksums
choco install server-jre -y
choco install python -y
mklink /d "c:\tools\python" "c:\Python35\"

REM C# commandline tools
choco install lynxtoolkit -y

REM C# scripting
choco install cs-script -y
mklink /d "c:\tools\cs-script" "C:\ProgramData\chocolatey\lib\cs-script\tools"

REM C# shell very useful
choco install cshell -y

choco install visualstudiocode -y
mklink /d "c:\tools\VS-Code" "C:\Program Files (x86)\Microsoft VS Code\" 

choco install powergui -y --allow-empty-checksums
mklink /d "c:\tools\PowerGUI" "C:\Program Files (x86)\PowerGUI\"

choco install git -y
mklink /d "c:\tools\git" "C:\Program Files\Git\"

choco install brackets -y
mklink /d "c:\tools\Brackets" "C:\Program Files (x86)\Brackets\"

REM also installs node
choco install yarn -y
choco install chutzpah -y
choco install sass -y
choco install httprest -y

choco install sqlite -y
choco install sqlite.shell -y
choco install sqlitebrowser -y
choco install sqlite.analyzer -y

choco install codelite -y
mklink /d "c:\tools\codelite" "C:\Program Files\CodeLite\"

choco install mongodb -y
choco install databasemaster -y --allow-empty-checksums
choco install mongochef -y
mklink /d "c:\tools\mongochef" "C:\ProgramData\chocolatey\lib\mongochef\tools"

choco install dotpeek -y
choco install taildotnet -y
choco install clrprofiler -y

choco install balsamiqmockups3 -y
choco install sourcetree -y
mklink /d "c:\tools\sourcetree" "C:\Program Files (x86)\Atlassian\SourceTree\"

choco install linqpad -y
mklink /d "c:\tools\LINQPad" "C:\Program Files (x86)\LINQPad5\"

REM another free c++ ide, prob. don't need it
REM choco install codeblocks -y

REM you need to download and install chromium SDK to make this work?!
REM choco install markdownpad2 -y
REM mklink /d "c:\tools\markdownpad2" "C:\Program Files (x86)\MarkdownPad 2\"

REM awesomium SDK (A WEB BROWSER FRAMEWORK) something to look into!
REM This one is awesome but hangs i think (installs clickonce)
REM choco install github -y --ignore-checksums

REM play around with this and see if this is useful
REM choco install rescuetime -y
REM mklink /d "c:\tools\rescuetime" "C:\Program Files (x86)\RescueTime\"

goto :Exit

:VS
echo choco install sqlstudio
echo choco install sql-server-management-studio
echo choco install mssqlserver2012express
echo choco install sqlserver2014express
echo choco install NuGet.vs
echo choco install NuGet.CommandLine
echo choco install NugetPackageExplorer
echo choco install nugetpackagemanager
echo choco install visualstudio2015community
echo choco install visualstudio2015professional
echo choco install vs2015remotetools
echo choco install vs2013remotetools
echo choco install visualstudio2013ultimate
echo choco install windows-sdk-7.1
echo choco install windows-sdk-6.1
echo choco install applicationcompatibilitytoolkit
echo choco install windows-performance-toolkit
echo choco install dotnet-verification-tool
echo choco install wixtoolset
echo choco install cruisecontrol.net
echo choco install nunit
echo choco install nunit.parallel
echo choco install xunit
echo choco install specflow
echo choco install dotnet4.5.1
echo choco install dotnet4.6.2
echo choco install dotnetcore-windowshosting
echo choco install mssqlserver-compact3.5
echo choco install mssyncframework21-sdk-x86
echo choco install wpfinspector
echo choco install powerguivsx 'powershell for VS'
goto :Exit

:DevO
echo choco install androidstudio
echo choco install adb (android debugger)
echo choco install unity
echo choco install titanium-studio
echo choco install monodevelop
echo choco install xamarin-visualstudio
echo choco install xamarin-studio
echo choco install xamarin
echo choco install nservicebus
echo choco install mirth
echo choco install tomcat
echo choco install instantwordpress
echo choco install postgresql
echo choco install pgadmin3
echo choco install automise
echo choco install jenkins
echo choco install haskell-stack
echo choco install memcached
echo choco install r.latest
echo choco install r.project
echo choco install r.studio
echo choco install MySQL
echo choco install mysql.workbench
echo choco install toad.mysql
echo choco install sqlyog 'like toad for mysql'
echo choco install mysql.utilities
goto :Exit

:DevO
echo choco install whatsapp
echo choco install windowslivewriter
echo choco install syncback 'Paid'
echo choco install btsync
echo choco install winmute 'mutes PC if you lock your screen or screensaver runs'
echo choco install prey 'track your laptop, phone and tablet when stolen'
echo choco install disableuac 'disable uac - on windows 8 metro apps won't work'
goto :Exit

:O

goto :Exit

:Cloud
echo choco install azurestorageexplorer
echo choco install windowsazurelibrariesfornet
echo choco install awscli 'AWS Command Line interface'
echo choco install awssdk-tools
echo choco install gae.sdk 'Google App Engine SDK'
REM echo choco install 
REM echo choco install 
goto :Exit

:ENT
echo choco install mp3tag
echo choco install vlc
echo choco install k-litecodecpackfull
echo choco install handbrake
echo choco install kodi
echo choco install anyvideoconverter
echo choco install plexmediaserver
goto :Exit

:DEFAULT
echo "DEFAULT INSTALL INITIATED"
choco install wincommandpaste -y
choco install winmerge -y
choco install telnet -y
choco install windowstelnet -y
choco install vim -y
choco install curl -y
choco install nssm -y
choco install imagemagick -y
choco install adwcleaner -y
choco install grepwin -y --allow-empty-checksums
choco install logparser -y
choco install wput -y
choco install everything -y
choco install openvpn -y
choco install sizer -y
choco install windirstat -y
choco install slack -y
choco install cppcheck -y
choco install renamemaster -y --allow-empty-checksums
choco install depends -y --allow-empty-checksums
choco install dropit -y
choco install contentsync -y
choco install dotnetinstaller -y --allow-empty-checksums
choco install hpusbdisk -y
choco install retroshare -y

choco install sysinternals -y
mklink /d c:\tools\sysinternals c:\ProgramData\chocolatey\lib\sysinternals\tools

REM Link stopped working - skip
REM choco install make -y
REM mklink /d c:\tools\make c:\ProgramData\chocolatey\lib\make\tools

choco install pstools -y
mklink /d c:\tools\pstools c:\ProgramData\chocolatey\lib\pstools\tools

choco install autoruns -y
mklink /d c:\tools\autoruns c:\ProgramData\chocolatey\lib\AutoRuns\tools

REM This doesn't work - skip
REM choco install hexedit -y --allow-empty-checksums
REM mklink /d c:\tools\hexedit c:\ProgramData\chocolatey\lib\hexedit\tools

choco install passwordscan -y --ignore-checksums
mklink /d "c:\tools\Password Security Scanner" "C:\Program Files (x86)\NirSoft\Password Security Scanner" 

choco install webbrowserpassview -y --ignore-checksums
mklink /d "c:\tools\WebBrowserPassView" "C:\Program Files (x86)\NirSoft\WebBrowserPassView" 

choco install chromepass -y
mklink /d "c:\tools\chromepass" "C:\ProgramData\chocolatey\lib\chromepass\tools"

choco install reshack -y
mklink /d c:\tools\reshack "C:\Program Files (x86)\Resource Hacker\"

choco install nircmd -y
mklink /d c:\tools\nircmd c:\ProgramData\chocolatey\lib\nircmd\tools

choco install autologon -y
mklink /d c:\tools\autologon c:\ProgramData\chocolatey\lib\autologon\tools

choco install clonespy -y
mklink /d c:\tools\clonespy "C:\Program Files\CloneSpy\"

choco install wget -y
mklink /d c:\tools\wget c:\ProgramData\chocolatey\lib\wget\tools

choco install dbgview -y
mklink /d c:\tools\dbgview c:\ProgramData\chocolatey\lib\dbgview\tools

choco install rdcman -y
mklink /d c:\tools\rdcman "C:\Program Files (x86)\Microsoft\Remote Desktop Connection Manager\"

choco install hwmonitor -y --allow-empty-checksums
mklink /d c:\tools\HWMonitor "C:\Program Files\CPUID\HWMonitor"

choco install logfusion -y
mklink /d c:\tools\logfusion "C:\Program Files (x86)\LogFusion\"

choco install bluescreenview -y
mklink /d c:\tools\bluescreenview "C:\Program Files (x86)\NirSoft\BlueScreenView"

choco install coretemp -y
mklink /d c:\tools\coretemp c:\ProgramData\chocolatey\lib\coretemp\tools

choco install beyondcompare -y
mklink /d c:\tools\beyondcompare "C:\Program Files\Beyond Compare 4\"

choco install iconsext -y
mklink /d c:\tools\IconsExtract "C:\Program Files (x86)\NirSoft\IconsExtract"

choco install dependencywalker -y --allow-empty-checksums
mklink /d c:\tools\dependencywalker c:\ProgramData\chocolatey\lib\dependencywalker\content

choco install lockhunter -y
mklink /d c:\tools\LockHunter "C:\Program Files\LockHunter"

choco install procexp -y
mklink /d c:\tools\procexp c:\ProgramData\chocolatey\lib\procexp\tools

choco install spark -y
mklink /d c:\tools\Spark "C:\Program Files (x86)\Spark"

choco install rdiff-backup -y
mklink /d c:\tools\rdiff-backup c:\ProgramData\chocolatey\lib\rdiff-backup\tools

choco install winspy -y
mklink /d c:\tools\winspy c:\ProgramData\chocolatey\lib\winspy\tools

choco install driveletterview -y
mklink /d c:\tools\driveletterview c:\ProgramData\chocolatey\lib\driveletterview\tools

choco install uniextract -y
mklink /d c:\tools\uniextract "C:\Program Files (x86)\Universal Extractor\"

choco install ultrasearch -y
mklink /d c:\tools\UltraSearch "C:\Program Files\JAM Software\UltraSearch\"

choco install dotnetversiondetector -y --allow-empty-checksums
mklink /d c:\tools\dotnetversiondetector c:\ProgramData\chocolatey\lib\dotnetversiondetector\tools

choco install fileshredder -y --allow-empty-checksums
mklink /d "c:\tools\File Shredder" "C:\Program Files\File Shredder\"

choco install docfetcher -y --allow-empty-checksums
mklink /d c:\tools\docfetcher "C:\Program Files (x86)\docfetcher\"

choco install ccleaner -y
mklink /d c:\tools\ccleaner "C:\Program Files\ccleaner\"

choco install defraggler -y
mklink /d c:\tools\defraggler "C:\Program Files\Defraggler\"

choco install httrack -y
mklink /d c:\tools\httrack "C:\Program Files\WinHTTrack\"

choco install malwarebytes -y
mklink /d c:\tools\Malwarebytes "C:\Program Files (x86)\Malwarebytes Anti-Malware\"

choco install avastfreeantivirus -y
mklink /d c:\tools\avast "C:\Program Files\Avast Software\Avast\"

goto :Exit

:start
if (%1)==() Goto :Usage
if (%1)==(INIT) goto :INIT

if (%1)==(find) goto :find
if (%1)==(update) goto :update

if (%1)==(DEFAULT) goto :DEFAULT
if (%1)==(DEV) goto :DEV
if (%1)==(NET) goto :NET

if (%1)==(VS) goto :VS
if (%1)==(DevO) goto :DevO
if (%1)==(ENT) goto :ENT
if (%1)==(Cloud) goto :Cloud
if (%1)==(O) goto :O

:Exit