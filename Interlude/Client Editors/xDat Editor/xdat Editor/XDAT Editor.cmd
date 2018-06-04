@Echo Off
Color F9
Title Loading...

:: ����ࠥ� ����� � ������ ��
Set java.external.version=Undefined
For /F "tokens=4-5 delims=. " %%W In ('Ver') Do Set windows.version=%%W.%%X
For /F "tokens=4 delims=()" %%J In ('Java -version 2^>^&1^|Find "SE Runtime Environment"') Do Set java.external.version=%%J

:: ������塞 ����� � ���� � ��६���� ���㦥���
Set Path=%~dp0java\bin;%~dp0java\lib;%~dp0libs;%~dp0bin;%Path%

:: ����ࠥ� ����� � ������ ���஥����� ��
For /F "tokens=4 delims=()" %%J In ('Java -version 2^>^&1^|Find "SE Runtime Environment"') Do Set java.internal.version=%%J
For /F "tokens=2 delims=: " %%X In ('Unzip -p editor.jar META-INF/MANIFEST.MF^|FindStr /BC:"Version"') Do Set xdat.version=%%X

:: �뢮��� �� �࠭ �ਢ���⢨�
:View
CLS
Title XDAT Editor v%xdat.version%
Echo.
Echo.	OS version: 		%windows.version%
Echo.	Editor version: 	%xdat.version%
Echo.	Java version: 		system - %java.external.version%
Echo.				built-in - %java.internal.version%
Echo.

:: ���訢��� � �, 祣� �� ��� ��������
Echo. & Echo Press 'u' for update (internet connection required) & Echo Press 'e' or Enter to launch XDAT editor
Set /P "$Command= Your choice: "
Set "Class="
For %%S In ("XdatEditor:","XdatEditor:e","Updater:u") Do (
	For /F "tokens=1-2 delims=:" %%A In ("%%~S") Do (
		If /I [%$Command%]==[%%B] Set Class=%%A
	)
)

:: ��ࠡ��뢠�� �롮� ���짮��⥫�
If Defined Class (
	Start java\bin\javaw -cp "editor.jar;updater.jar;./libs/*" acmi.l2.clientmod.xdat.%Class%
) Else GoTo :View