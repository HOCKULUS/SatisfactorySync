Add-Type -AssemblyName System.Windows.Forms

# Pfad zur Textdatei, in der die Eingaben gespeichert werden
$filePath = Join-Path $env:USERPROFILE "syncdata_satisfactory.txt"

# Prüfen, ob die Datei existiert. Wenn nicht, Formular anzeigen
if (!(Test-Path $filePath)) {

    # Formular erstellen
    $form = New-Object System.Windows.Forms.Form
    $form.Text = "FTP-Einstellungen"
    $form.ClientSize = New-Object System.Drawing.Size(400, 200)
    $form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedDialog
    $form.MaximizeBox = $false
    $form.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen

    # FTP-Pfad Eingabe erstellen
    $ftpPathLabel = New-Object System.Windows.Forms.Label
    $ftpPathLabel.Location = New-Object System.Drawing.Point(10, 20)
    $ftpPathLabel.Size = New-Object System.Drawing.Size(80, 20)
    $ftpPathLabel.Text = "FTP-Pfad:"
    $form.Controls.Add($ftpPathLabel)

    $ftpPathTextBox = New-Object System.Windows.Forms.TextBox
    $ftpPathTextBox.Location = New-Object System.Drawing.Point(100, 20)
    $ftpPathTextBox.Size = New-Object System.Drawing.Size(280, 20)
    $form.Controls.Add($ftpPathTextBox)

    # Benutzername Eingabe erstellen
    $usernameLabel = New-Object System.Windows.Forms.Label
    $usernameLabel.Location = New-Object System.Drawing.Point(10, 60)
    $usernameLabel.Size = New-Object System.Drawing.Size(80, 20)
    $usernameLabel.Text = "Benutzername:"
    $form.Controls.Add($usernameLabel)

    $usernameTextBox = New-Object System.Windows.Forms.TextBox
    $usernameTextBox.Location = New-Object System.Drawing.Point(100, 60)
    $usernameTextBox.Size = New-Object System.Drawing.Size(280, 20)
    $form.Controls.Add($usernameTextBox)

    # Passwort Eingabe erstellen
    $passwordLabel = New-Object System.Windows.Forms.Label
    $passwordLabel.Location = New-Object System.Drawing.Point(10, 100)
    $passwordLabel.Size = New-Object System.Drawing.Size(80, 20)
    $passwordLabel.Text = "Passwort:"
    $form.Controls.Add($passwordLabel)

    $passwordTextBox = New-Object System.Windows.Forms.TextBox
    $passwordTextBox.Location = New-Object System.Drawing.Point(100, 100)
    $passwordTextBox.Size = New-Object System.Drawing.Size(280, 20)
    $passwordTextBox.PasswordChar = "*"
    $form.Controls.Add($passwordTextBox)

    # OK- und Abbrechen-Buttons erstellen
    $okButton = New-Object System.Windows.Forms.Button
    $okButton.Location = New-Object System.Drawing.Point(100, 140)
    $okButton.Size = New-Object System.Drawing.Size(80, 25)
    $okButton.Text = "OK"
    $okButton.DialogResult = [System.Windows.Forms.DialogResult]::OK
    $form.Controls.Add($okButton)

    $cancelButton = New-Object System.Windows.Forms.Button
    $cancelButton.Location = New-Object System.Drawing.Point(200, 140)
    $cancelButton.Size = New-Object System.Drawing.Size(80, 25)
    $cancelButton.Text = "Abbrechen"
    $cancelButton.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
    $form.Controls.Add($cancelButton)

    # Formular anzeigen und auf Eingabe warten
    $result = $form.ShowDialog()

    # Wenn OK-Button geklickt wurde, Eingaben in Textdatei speichern
    if ($result -eq [System.Windows.Forms.DialogResult]::OK) {
        $ftpPath = $ftpPathTextBox.Text
        $username = $usernameTextBox.Text
        $password = $passwordTextBox.Text

        # Eingaben in Textdatei speichern
        Set-Content -Path $filePath -Value "FTP-Pfad: $ftpPath`nBenutzername: $username`nPasswort: $password"
    }
}
$filePath = "$env:USERPROFILE\syncdata_satisfactory.txt"

# Überprüfen, ob die Datei existiert
if (Test-Path -Path $filePath) {
    # Dateiinhalt lesen und in Variablen speichern
    $global:fileContent = Get-Content -Path $filePath
    $global:ftpPath = ($fileContent | Select-String -Pattern "^FTP-Pfad:").ToString().Split(": ")[2]
    $global:username = ($fileContent | Select-String -Pattern "^Benutzername:").ToString().Split(": ")[2]
    $global:password = ($fileContent | Select-String -Pattern "^Passwort:").ToString().Split(": ")[2]

    # Überprüfen, ob die Variablen korrekt befüllt wurden
    Write-Host "FTP-Pfad: $ftpPath"
    Write-Host "Benutzername: $username"
    Write-Host "Passwort: $password"
}
else {
    Write-Host "Die Datei 'syncdata_satisfactory.txt' existiert nicht."
    exit
}

# Überprüfen, ob folder_satisfactory.txt existiert und den Pfad auslesen
if (Test-Path "$env:USERPROFILE\folder_satisfactory.txt") {
    $global:satisfactoryPath = Get-Content "$env:USERPROFILE\folder_satisfactory.txt"
}
else {
    # Windows-Form erstellen
    Add-Type -AssemblyName System.Windows.Forms
    # Ausgangspfad festlegen
    $defaultPath = ""
    $dialog = New-Object System.Windows.Forms.FolderBrowserDialog
    $dialog.Description = "Bitte wählen Sie den Speicherstand-Ordner von Satisfactory aus:
    $env:LOCALAPPDATA\FactoryGame\Saved\SaveGames\"
    $dialog.SelectedPath = $defaultPath
    $dialog.ShowNewFolderButton = $false
        $result = $dialog.ShowDialog()
        try{
            Test-Path $dialog.SelectedPath
            $check = $true
        }
        catch{
            $check = $false
        }
        if($check -eq $false){
            exit
        }
    if ($result -eq [System.Windows.Forms.DialogResult]::OK) {
        $satisfactoryPath = $dialog.SelectedPath

        # Überprüfen, ob der Ordner unter $env:LOCALAPPDATA\FactoryGame\Saved\SaveGames\ zu finden ist
        if ((Test-Path $satisfactoryPath)) {
            # Speichern des Pfads in folder_satisfactory.txt
            $satisfactoryPath | Out-File "$env:USERPROFILE\folder_satisfactory.txt"
        }
    }
}

$sleeptime = 5000 #syncronisationshäufigkeit
$global:run = $true

$scriptblock = {
    # Pfad zur Textdatei, in der die Eingaben gespeichert werden
    $filePath = "$env:USERPROFILE\syncdata_satisfactory.txt"

    # Überprüfen, ob die Datei existiert
    if (Test-Path -Path $filePath) {
        # Dateiinhalt lesen und in Variablen speichern
        $global:fileContent = Get-Content -Path $filePath
        $global:ftpPath = ($fileContent | Select-String -Pattern "^FTP-Pfad:").ToString().Split(": ")[2]
        $global:username = ($fileContent | Select-String -Pattern "^Benutzername:").ToString().Split(": ")[2]
        $global:password = ($fileContent | Select-String -Pattern "^Passwort:").ToString().Split(": ")[2]
    }
    else {
        exit
    }
    # Überprüfen, ob folder_satisfactory.txt existiert und den Pfad auslesen
if (Test-Path "$env:USERPROFILE\folder_satisfactory.txt") {
    $global:satisfactoryPath = Get-Content "$env:USERPROFILE\folder_satisfactory.txt"
}
else {
    exit
}
    Add-Type -AssemblyName System.Windows.Forms
    [System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')    | out-null
    [System.Reflection.Assembly]::LoadWithPartialName('presentationframework')   | out-null
    [System.Reflection.Assembly]::LoadWithPartialName('System.Drawing')    | out-null
    [System.Reflection.Assembly]::LoadWithPartialName('WindowsFormsIntegration') | out-null
    $GameFolder = "76561198343856803" #DEIN GAME ORDNER HIER EINTRAGEN. Hier findest du den entsprechenden Game Ordner: C:\Users\[Dein Name]\AppData\Local\FactoryGame\Saved\SaveGames
    $sync_error = 0
    Function Show-MessageForm {

        [CmdletBinding()]
        param (
            [Parameter(Mandatory=$true)]
            [string]$Message,
            [string]$Color
        )
        # Define the form
        $Form = New-Object System.Windows.Forms.Form
        $Form.TopMost = $true
        $Form.ControlBox = $false
        $Form.BackColor = $Color
        $Form.FormBorderStyle = 'None'
        $form.ShowInTaskbar = $false
        $Form.Width = 500
        $Form.Height = 10
        $Form.AllowTransparency = $true
        $transKey               = "#c0c0c0"
        $Form.Opacity = 0.6
        $Form.StartPosition = [System.Windows.Forms.FormStartPosition]::Manual
        $Poistion                        = 'RightBottom'
        $Coordinates                     = switch ($Poistion)
        {
            #'LeftTop' { 0, 0 }
            'LeftBottom'  { 0, $([System.Windows.Forms.Screen]::PrimaryScreen.WorkingArea.Bottom) }
            #'RightTop' { $([System.Windows.Forms.Screen]::PrimaryScreen.WorkingArea.Width - $Form.Width), 0 }
            'RightBottom' { $([System.Windows.Forms.Screen]::PrimaryScreen.WorkingArea.Width - $Form.Width), $([System.Windows.Forms.Screen]::PrimaryScreen.WorkingArea.Bottom + $Form.height) }
        }
        $Form.Location           = New-Object System.Drawing.Point($Coordinates)

        # Define the label to display the message
        $Label = New-Object System.Windows.Forms.Label
        $Label.Text = $Message
        $Label.AutoSize = $false
        $Label.AutoEllipsis = $false
        $Label.Dock = 'Fill'
        $Label.ForeColor = 'white'
        $Label.Font = New-Object System.Drawing.Font("Segoe UI", 10, [System.Drawing.FontStyle]::Regular)
        $Label.Location = New-Object System.Drawing.Point(0, 0)
        $Label.TextAlign = 'TopLeft'
        $Label.UseCompatibleTextRendering = $true
        $Label.UseMnemonic = $false
        $Form.Controls.Add($Label)

        # Show the form for 2 seconds
        $Form.Add_Shown({$Form.Activate()})
        [void]$Form.show()
        $i = 0
        while($i -le 100){[System.Windows.Forms.Application]::DoEvents()
            [void]$Form.update()
            sleep -Milliseconds 1
            $i ++
            $Form.TopMost = $true
        }
        $Form.Close()
    }

    # FTP-Verbindungsinformationen
    $ftpUrl = "ftp://"+$ftpPath
    $ftpUser = $global:username
    $ftpPass = $global:password
    $remoteFilePath = $ftpUrl

    #Pfad zu den lokalen Spielständen
    $localPath = $satisfactoryPath

    #Pfad zum FTP-Ordner, in den die Spielstände synchronisiert werden sollen
    $remotePath = ""

    #Verbindung zum FTP-Server herstellen
    $ftp = [System.Net.FtpWebRequest]::Create("$ftpUrl$remotePath")
    $ftp.Credentials = New-Object System.Net.NetworkCredential($ftpUser, $ftpPass)
    $ftp.Method = [System.Net.WebRequestMethods+Ftp]::ListDirectory
    #Dateien aus dem lokalen Verzeichnis auswählen
    $fileList = Get-ChildItem -Path $localPath -Filter "*.sav" -Recurse

    #Schleife durch die Dateien und synchronisiere sie mit dem FTP-Ordner
    foreach ($file in $fileList) {

        # Erstelle einen neuen Dateinamen mit dem Rechnernamen
        $newFileName = $file.Name.Replace(".sav", "") + "_" + $env:COMPUTERNAME + ".sav"
        $remoteFilePath = "$ftpUrl$remotePath/$newFileName"

        # Überprüfe, ob die Datei bereits hochgeladen wurde
        $logFilePath = "$env:USERPROFILE\logfile_satisfactory_up.txt"
        $logFileExists = Test-Path $logFilePath

        if ($logFileExists) {
            $logContent = Get-Content $logFilePath
            $fileAlreadyUploaded = $logContent -contains $newFileName
        } else {
            $fileAlreadyUploaded = $false
        }

        if (!$fileAlreadyUploaded) {
            if($sync_error -eq 0){
                try{
                    # Sende die Datei an den FTP-Server und speichere den Dateinamen im Logfile
                    $ftp = [System.Net.FtpWebRequest]::Create($remoteFilePath)
                    $ftp.Credentials = New-Object System.Net.NetworkCredential($ftpUser, $ftpPass)
                    $ftp.Method = [System.Net.WebRequestMethods+Ftp]::UploadFile
                    $ftp.UseBinary = $true
                    $ftp.UsePassive = $true

                    $content = [System.IO.File]::ReadAllBytes($file.FullName)
                    $ftpStream = $ftp.GetRequestStream()

                    $ftpStream.Write($content, 0, $content.Length)
                    Show-MessageForm -Message "$remoteFilePath wurde hochgeladen" -Color "Green"
                }
                catch{
                    $sync_error ++
                    Show-MessageForm -Message "Fehler beim Upload von $remoteFilePath"  -Color "DarkRed"
                }
            }
            $ftpStream.Close()
            $ftpStream.Dispose()

            # Füge den Dateinamen zum Logfile hinzu
            Add-Content $logFilePath $newFileName
        } else {

            #Write-Host "Die Datei '$newFileName' wurde bereits hochgeladen und wird übersprungen."
        }
    }



    #Pfad zu den lokalen Spielständen
    $localPath = $satisfactoryPath

    # Verbindung zum FTP-Server herstellen
    $ftpRequest = [System.Net.FtpWebRequest]::Create("$ftpUrl")
    $ftpRequest.Credentials = New-Object System.Net.NetworkCredential($ftpUser, $ftpPass)
    $ftpRequest.Method = [System.Net.WebRequestMethods+Ftp]::ListDirectoryDetails

    # Liste der bereits heruntergeladenen Dateien
    $downloadedFiles = @(Get-ChildItem -Path $localPath -Filter "*.sav" -Recurse)
    $downloadedFiles = $downloadedFiles | ForEach-Object { $_.Name }
    # Verzeichnisliste schrittweise lesen
    $ftpResponse = $ftpRequest.GetResponse()
    $ftpReader = New-Object System.IO.StreamReader($ftpResponse.GetResponseStream())

    while (!$ftpReader.EndOfStream) {
        $line = $ftpReader.ReadLine()
        $parts = $line.Split(" ")
        $fileName = ""
        $index = -1
        while (1 -eq 1) {
            if ($parts[$index].Contains(":")) {
                break
            }
            $fileName = $parts[$index] + " " + $fileName
            $index--
        }

        $fileName = $fileName.Trim()


        if ($fileName -notmatch $env:COMPUTERNAME -and $fileName.EndsWith(".sav") -and $downloadedFiles -notcontains $fileName) {
            if($sync_error -eq 0){
            # Datei noch nicht heruntergeladen, herunterladen
                try{
                    $localFilePath = Join-Path $localPath $fileName
                    $ftpDownloadRequest = [System.Net.FtpWebRequest]::Create("$ftpUrl$remotePath/$fileName")
                    $ftpDownloadRequest.Credentials = New-Object System.Net.NetworkCredential($ftpUser, $ftpPass)
                    $ftpDownloadRequest.Method = [System.Net.WebRequestMethods+Ftp]::DownloadFile

                    $ftpDownloadResponse = $ftpDownloadRequest.GetResponse()
                    $ftpDownloadStream = $ftpDownloadResponse.GetResponseStream()
                    $localStream = [System.IO.File]::Create($localFilePath)

                    $buffer = New-Object byte[] 1024
                    while ($read = $ftpDownloadStream.Read($buffer, 0, $buffer.Length)) {
                        $localStream.Write($buffer, 0, $read)
                    }

                    $localStream.Close()
                    $ftpDownloadStream.Close()
                    $ftpDownloadResponse.Close()

                    Show-MessageForm -Message "$fileName wurde heruntergeladen"  -Color "Green"
                }
                catch{
                    Show-MessageForm -Message "Fehler beim Download von $fileName"  -Color "DarkRed"
                    exit
                    $sync_error ++
                }
            }
        }
        else{
            #Show-MessageForm -Message "$fileName wurde übersprungen"  -Color "DarkRed"
        }
    }

    $ftpResponse.Close()
    $ftpReader.Close()
    if($sync_error -eq 0){
        Show-MessageForm -Message "Syncronisation beendet"  -Color "Green"
    }
    else{
        Show-MessageForm -Message "Fehler bei Syncronisation"  -Color "DarkRed"
    }
}
Add-Type -AssemblyName System.Windows.Forms
[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')    | out-null
[System.Reflection.Assembly]::LoadWithPartialName('presentationframework')   | out-null
[System.Reflection.Assembly]::LoadWithPartialName('System.Drawing')    | out-null
[System.Reflection.Assembly]::LoadWithPartialName('WindowsFormsIntegration') | out-null

# Erstellen Sie eine neue Form
$form = New-Object System.Windows.Forms.Form

# Legen Sie einige Eigenschaften für die Form fest
$form.Text = "Satisfactory Sync"
$form.Width = 300
$form.Height = 200
$form.StartPosition = "CenterScreen"
$form.FormBorderStyle = "FixedSingle"
$form.ShowInTaskbar = $false
$form.WindowState = "Minimized"
$form.Visible = $false
${env:CommonProgramFiles(x86)}
if(test-path "${env:ProgramFiles(x86)}\Steam\steamapps\common\Satisfactory\FactoryGame.exe"){
    $icon = [System.Drawing.Icon]::ExtractAssociatedIcon("${env:ProgramFiles(x86)}\Steam\steamapps\common\Satisfactory\FactoryGame.exe") #Tray Icon here
}
else{
    $DriveLetters = Get-WmiObject Win32_Volume | Where-Object {$_.DriveType -eq 3} | Select-Object -ExpandProperty DriveLetter

    foreach ($DriveLetter in $DriveLetters) {
        $Folder = "$($DriveLetter):\Steam\steamapps\common\Satisfactory"
        $FilePath = $Folder+"\FactoryGame.exe"
    
        if (Test-Path $FilePath) {
            Write-Host "Found Satisfactory game executable at: $FilePath"
             $icon = [System.Drawing.Icon]::ExtractAssociatedIcon("$FilePath") #Your Tray Icon here
            break
        } else {
            Write-Host "Satisfactory game executable not found on drive $($DriveLetter)"
            $icon = [System.Drawing.Icon]::ExtractAssociatedIcon("C:\Windows\System32\Dxpserver.exe") #Tray Icon here
        }
    }
}
# Add icon the systray 
$Main_Tool_Icon = New-Object System.Windows.Forms.NotifyIcon
$Main_Tool_Icon.Text = "FactorySync"
$Main_Tool_Icon.Icon = $icon
$Main_Tool_Icon.Visible = $true
 
# Add Restart the tool
$Menu_state = New-Object System.Windows.Forms.MenuItem
$Menu_state.Enabled = $false
$Menu_state.Text = "Satisfacory is running. Sync is active."

# Add Restart the tool
$Menu_start_Tool = New-Object System.Windows.Forms.MenuItem
$Menu_start_Tool.Text = "Start onetime sync"
$Menu_start_Tool.add_click({
write-host "run"
Start-Job -Name "FactorySync" -ScriptBlock $scriptblock
})
 
# Add menu exit
$Menu_Exit = New-Object System.Windows.Forms.MenuItem
$Menu_Exit.Text = "Exit"
$Menu_Exit.add_click({
    $global:run = $false
    $job_state = Get-Job -Name FactorySync -ErrorAction SilentlyContinue
    foreach($job in $job_state){
        if($job.state -ne "running"){
            Remove-Job -Id $job.id
        }
        else{
            Stop-Job -Id $job.id
            Remove-Job -Id $job.id
        }
    }
    $form.hide()
    $Main_Tool_Icon.Visible = $false
})
 
# Add all menus as context menus
$contextmenu = New-Object System.Windows.Forms.ContextMenu
$Main_Tool_Icon.ContextMenu = $contextmenu
$Main_Tool_Icon.contextMenu.MenuItems.AddRange($Menu_state)
$Main_Tool_Icon.contextMenu.MenuItems.AddRange($Menu_start_Tool)
$Main_Tool_Icon.contextMenu.MenuItems.AddRange($Menu_Exit)


# Starten Sie die Form
[void]$form.Show()
$timeout1 = $sleeptime #erste syncronisation soll direkt erfolgen wenn das spiel gestartet wird
$timeout2 = 0
do{[System.Windows.Forms.Application]::DoEvents()
    #write-host "ok"
    $form.Update()
    sleep -Milliseconds 1
    if($timeout2 -gt 40){ #Der Status der Jobs und des Games soll nicht zu oft geprüft werden
        try{$game_state = Get-Process -Name FactoryGame*  -ErrorAction SilentlyContinue}
        catch{$game_state = 0}
        try{$job_state = Get-Job -Name FactorySync  -ErrorAction SilentlyContinue}
        catch{$job_state = ""}
        $timeout2 = 0
        #write-host "Check"
    }
    $timeout1 ++
    $timeout2 ++
    if($game_state.length -gt 0){
        $Menu_state.Text = "Satisfacory is running. AutoSync is active."
    }
    else{
        $Menu_state.Text = "AutoSync is not active."
    }
    if($game_state.length -gt 0 -and $job_state.count -eq 0 -and $timeout1 -gt $sleeptime){
        $timeout1 = 0
        $global:push_gamesync = 0
        write-host "run"
        Start-Job -Name "FactorySync" -ScriptBlock $scriptblock
    }
    if($job_state.count -eq 1 -and $job_state[0].State -ne "running"){
         Remove-Job -Id $job_state[0].id -ErrorAction SilentlyContinue
    }
    if($job_state.count -gt 1){
        foreach($job in $job_state){
            if($job.state -ne "running"){
                Remove-Job -Id $job.id  -ErrorAction SilentlyContinue
            }
            else{
                Stop-Job -Id $job.id
                Remove-Job -Id $job.id  -ErrorAction SilentlyContinue
            }
        }
    }
}until($global:run -eq $false)
# SIG # Begin signature block
# MIIFfwYJKoZIhvcNAQcCoIIFcDCCBWwCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUrYNpxE4OCnuNqTLGhuSTLawH
# qDWgggMdMIIDGTCCAgGgAwIBAgIQexbogPXeboFOAZHih7e5LjANBgkqhkiG9w0B
# AQsFADAXMRUwEwYDVQQDDAxob2NrdWx1cy5jb20wIBcNMjMwNDI5MTAzODAxWhgP
# MjIyMzA0MjkxMDQ4MDFaMBcxFTATBgNVBAMMDGhvY2t1bHVzLmNvbTCCASIwDQYJ
# KoZIhvcNAQEBBQADggEPADCCAQoCggEBAM1+vBeD+pYE8PBLHmspIP2ZN+tgpeBP
# gLCqjIWHprJnedAq7x8Wsr+NWzhsgm+nq0x7x696PJbYVv4yOGKkCp8Fxja6X3lc
# i8RBAiruuO6twq1LIZDxR2zaJ3Sg0X+ATm5YyhsurqWwKJBUhZeyWV+7wy/kpxVo
# cL2buF5nt5DsAVyLtMyWh/jNiFV4U+f0dtVjlrHeJLYqnSNIq1XybAczqqN5Q+R+
# irnUq9S+CxqjUBIHiDC3KJo+3rn/8tC2B6N0wJpgK3+szffb0rAFNv761P4LikP3
# DapPMFq/ur8M7+h/k+4nqG5OKExh4Dda9CrRJDxxM0rIuXcdPaLF2t0CAwEAAaNf
# MF0wDgYDVR0PAQH/BAQDAgeAMBMGA1UdJQQMMAoGCCsGAQUFBwMDMBcGA1UdEQQQ
# MA6CDGhvY2t1bHVzLmNvbTAdBgNVHQ4EFgQUz9D0NwbqIHUMfdys3PpBKpDDxf4w
# DQYJKoZIhvcNAQELBQADggEBABvcH6vG3bderyfiudfshRil4g2yEudLGm1OeBcG
# Yv7ELRgmNFMfbtdD3aAiwpVtspfycgFUTLb319oIdRE1zqtfIZb933hAQo1Zthpk
# B2QhO57yHVuhmx9uhKCM4vd0CRAMTlPN68TMl0FpoSHMDBQvzWYf9B1fsFXtaqLp
# AvQ/OYcX6pWQSTKUOz37geb67vOVLwYnRadJEMzXKEOGT1k1J53iypyNiIRstxpU
# KlN5DDfW6fZKN4nPNJiHlolwk+sdpKD0rlcvoY0FLfVtMLY5rI+7dk4vdxXA6ZAS
# d+2Mk6fjKJ7RfhCujVPrxtJnufxZODDI0Xp4eXtxkSq9p94xggHMMIIByAIBATAr
# MBcxFTATBgNVBAMMDGhvY2t1bHVzLmNvbQIQexbogPXeboFOAZHih7e5LjAJBgUr
# DgMCGgUAoHgwGAYKKwYBBAGCNwIBDDEKMAigAoAAoQKAADAZBgkqhkiG9w0BCQMx
# DAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAjBgkq
# hkiG9w0BCQQxFgQUM1wdvyO6PvR+bPUUCMjFkq8vK/swDQYJKoZIhvcNAQEBBQAE
# ggEAH7534I3L97RNSYBjpoQLLBu97gx5ZDinJZS9/pTyjkAZJWbVMIGkclYPe/ye
# OUnhXtOPKBEG+BBmbKDAxbltrB37pusd+o48QjZwgBJAFa1zm0kdhRh/7tpU4/hB
# zS7ulC0t+q8k9XW0mRizTGskic5gOhnk2+oz9ph798zSijbAzRlCzB3I+e9QOJ9a
# 1p1cgd+FCrB5vALd2AFO1r3arkoKUxJa92qpf6weyHBKmPZ34DsZq+SoxWlch2Yd
# RLFj2TK3CKVTeWuHoSpoWU037ku8VVyXCYPmn1c5cq9DYWkKAma/oavP6Oxq23gK
# 7Jvh4UXg4Mc5DGtk366s1GVUMw==
# SIG # End signature block
