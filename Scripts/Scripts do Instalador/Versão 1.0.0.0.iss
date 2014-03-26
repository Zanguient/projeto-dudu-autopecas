; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Sistema de Gest�o - Mini Mercado"
#define MyAppVersion "1.0.0.0"
#define MyAppPublisher "WLL - SISTEMAS"
#define AppPublisherURL "http://www.wllsistemas.com.br"
#define MyAppURL "http://www.wllsistemas.com.br"
#define AppContact "wllfl@ig.com.br"
#define MyAppExeName "SistemaGestao.exe"
#define AppSupportPhone "(11) 99845-2278"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{5F246D9B-E9C1-401D-A8A3-0A6C04508CEC}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\Sistema Mini-Mercado
DefaultGroupName={#MyAppName}
OutputBaseFilename=Gest�o Mini-Mercado 1.0.0.0
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Sistema Mini-Mercado\Projeto\SistemaGestao.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Sistema Mini-Mercado\Banco de Dados\MINIMERCADO.FDB"; DestDir: "{app}\Banco de Dados"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Sistema Mini-Mercado\Projeto\dbxconnections.ini"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Sistema Mini-Mercado\Projeto\dbxdrivers.ini"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Sistema Mini-Mercado\Projeto\String_Conexao.ini"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Sistema Mini-Mercado\Projeto\UF.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Sistema Mini-Mercado\DLLs\*"; DestDir: "{app}\DLLs"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Sistema Mini-Mercado\DLLs\fbclient.dll"; DestDir: "{sys}"; Flags: ignoreversion
Source: "C:\Sistema Mini-Mercado\DLLs\midas.dll"; DestDir: "{sys}"; Flags: regserver
Source: "C:\Sistema Mini-Mercado\DLLs\dbxfb.dll"; DestDir: "{sys}"; Flags: ignoreversion
Source: "C:\Sistema Mini-Mercado\DLLs\dbxint.dll"; DestDir: "{sys}"; Flags: ignoreversion
Source: "C:\Sistema Mini-Mercado\DLLs\InterfaceEpsonNF.dll"; DestDir: "{sys}"; Flags: ignoreversion
Source: "C:\Sistema Mini-Mercado\DLLs\InterfaceEpsonNF.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Sistema Mini-Mercado\Firebird-2.5.2.26540.exe"; DestDir: {tmp}; Flags: deleteafterinstall promptifolder
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
Filename: {tmp}\Firebird-2.5.2.26540.exe; WorkingDir: {tmp}; Parameters: "/VERYSILENT /NOICONS /COMPONENTS=""SuperServerComponent, ServerComponent, DevAdminComponent, ClientComponent"" /FORCE /NOGDS32 /COPYFBCLIENT"


