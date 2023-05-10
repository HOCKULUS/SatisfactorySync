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
    $ftpPathLabel.Text = "FTP-address:"
    $form.Controls.Add($ftpPathLabel)

    $ftpPathTextBox = New-Object System.Windows.Forms.TextBox
    $ftpPathTextBox.Location = New-Object System.Drawing.Point(100, 20)
    $ftpPathTextBox.Size = New-Object System.Drawing.Size(280, 20)
    $form.Controls.Add($ftpPathTextBox)

    # Benutzername Eingabe erstellen
    $usernameLabel = New-Object System.Windows.Forms.Label
    $usernameLabel.Location = New-Object System.Drawing.Point(10, 60)
    $usernameLabel.Size = New-Object System.Drawing.Size(80, 20)
    $usernameLabel.Text = "Username:"
    $form.Controls.Add($usernameLabel)

    $usernameTextBox = New-Object System.Windows.Forms.TextBox
    $usernameTextBox.Location = New-Object System.Drawing.Point(100, 60)
    $usernameTextBox.Size = New-Object System.Drawing.Size(280, 20)
    $form.Controls.Add($usernameTextBox)

    # Passwort Eingabe erstellen
    $passwordLabel = New-Object System.Windows.Forms.Label
    $passwordLabel.Location = New-Object System.Drawing.Point(10, 100)
    $passwordLabel.Size = New-Object System.Drawing.Size(80, 20)
    $passwordLabel.Text = "Password:"
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
    $okButton.Text = "ok"
    $okButton.DialogResult = [System.Windows.Forms.DialogResult]::OK
    $form.Controls.Add($okButton)

    $cancelButton = New-Object System.Windows.Forms.Button
    $cancelButton.Location = New-Object System.Drawing.Point(200, 140)
    $cancelButton.Size = New-Object System.Drawing.Size(80, 25)
    $cancelButton.Text = "cancel"
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
    $dialog.Description = "Please select the save file directory for Satisfactory:
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
    $up = 0
    $down = 0
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
    #$GameFolder = "76561198343856803" #DEIN GAME ORDNER HIER EINTRAGEN. Hier findest du den entsprechenden Game Ordner: C:\Users\[Dein Name]\AppData\Local\FactoryGame\Saved\SaveGames
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
        # Create a new file name with the computer name and date (if filename includes "autosave")
        if ($file.Name -like "*autosave*") {
            $dateTime = $file.LastWriteTime.ToString("ddMMyy-HHmmss")
            $newFileName = $file.Name.Replace(".sav", "") + "_" + $dateTime + "_" + $env:COMPUTERNAME + ".sav"
        } else {
            $newFileName = $file.Name.Replace(".sav", "") + "_" + $env:COMPUTERNAME + ".sav"
        }

        $remoteFilePath = "$ftpUrl$remotePath/$newFileName"

        # Check if the file has already been uploaded
        $logFilePath = "$env:USERPROFILE\logfile_satisfactory_up.txt"
        $logFileExists = Test-Path $logFilePath

        if ($logFileExists) {
            $logContent = Get-Content $logFilePath
            $fileAlreadyUploaded = $logContent -contains $newFileName
        } else {
            $fileAlreadyUploaded = $false
        }

        # Upload the file if it hasn't already been uploaded
        if (!$fileAlreadyUploaded) {
            if($sync_error -eq 0){
                try{
                    # Send the file to the FTP server and save the file name to the log file
                    $ftp = [System.Net.FtpWebRequest]::Create($remoteFilePath)
                    $ftp.Credentials = New-Object System.Net.NetworkCredential($ftpUser, $ftpPass)
                    $ftp.Method = [System.Net.WebRequestMethods+Ftp]::UploadFile
                    $ftp.UseBinary = $true
                    $ftp.UsePassive = $true

                    $content = [System.IO.File]::ReadAllBytes($file.FullName)
                    $ftpStream = $ftp.GetRequestStream()

                    $ftpStream.Write($content, 0, $content.Length)
                    if($args[0] -eq $false){
                        Show-MessageForm -Message "$remoteFilePath was uploaded successfully" -Color "Green"
                    }
                    $up ++
                }
                catch{
                    $sync_error ++
                    if($args[0] -eq $false){
                        Show-MessageForm -Message "Error uploading $remoteFilePath"  -Color "DarkRed"
                    }
                }
            }
            $ftpStream.Close()
            $ftpStream.Dispose()

            # Add the file name to the log file
            Add-Content $logFilePath $newFileName
        } else {
            # The file has already been uploaded and will be skipped
            #Write-Host "The file '$newFileName' has already been uploaded and will be skipped."
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
                    if($args[0] -eq $false){
                        Show-MessageForm -Message "$fileName wurde heruntergeladen"  -Color "Green"
                    }
                    $down ++
                }
                catch{
                    if($args[0] -eq $false){
                        Show-MessageForm -Message "Fehler beim Download von $fileName"  -Color "DarkRed"
                    }
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
        if($args[0] -eq $false){
            Show-MessageForm -Message "Syncronisation beendet"  -Color "Green"
        }
        return (get-date -Format HH:mm:ss) + " | SUCCESS | UP: $up DOWN: $down"
    }
    else{
        if($args[0] -eq $false){
            Show-MessageForm -Message "Fehler bei Syncronisation"  -Color "DarkRed"
        }
        return (get-date -Format HH:mm:ss) + " | ERROR | UP: $up DOWN: $down"
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
$Menu_state.Text = "Satisfacory is running. AutoSync is active."

# Add Restart the tool
$Menu_state2 = New-Object System.Windows.Forms.MenuItem
$Menu_state2.Enabled = $false
$Menu_state2.Text = "No files have been synced."

# Add Restart the tool
$Menu_settings = New-Object System.Windows.Forms.MenuItem
$Menu_settings.Enabled = $true
$Menu_settings.Text = "Settings"

$Menu_messages = $Menu_settings.MenuItems.Add("Disable messages")
$Menu_autosync = $Menu_settings.MenuItems.Add("Disable AutoSync")
$Menu_ftpsettings = $Menu_settings.MenuItems.Add("Edit FTP settings")
$Menu_gamefolder = $Menu_settings.MenuItems.Add("Edit game folder")
$Menu_viewhistory = $Menu_settings.MenuItems.Add("View sync history")
$Menu_clearhistory = $Menu_settings.MenuItems.Add("Clear sync history")

$Menu_messages.Checked = $true
$Menu_messages.add_click({
    if($Menu_messages.Checked -eq $false){
        $Menu_messages.Checked = $true
    }
    else{
        $Menu_messages.Checked = $false
    }   
})

$Menu_autosync.Checked = $false
$Menu_autosync.add_click({
    if($Menu_autosync.Checked -eq $false){
        $Menu_autosync.Checked = $true
    }
    else{
        $Menu_autosync.Checked = $false
    }   
})

$Menu_ftpsettings.add_click({
    start "$env:USERPROFILE\syncdata_satisfactory.txt" -ErrorAction SilentlyContinue
})

$Menu_clearhistory.add_click({
    Set-Content -Path "$env:USERPROFILE\logfile_satisfactory_up.txt" -Value ""
})

$Menu_viewhistory.add_click({
    start "$env:USERPROFILE\logfile_satisfactory_up.txt"
})

$Menu_gamefolder.add_click({
    start "$env:USERPROFILE\folder_satisfactory.txt"
})

# Add Restart the tool
$Menu_start_Tool = New-Object System.Windows.Forms.MenuItem
$Menu_start_Tool.Text = "Initiate one-time sync"
$Menu_start_Tool.add_click({
$Menu_start_Tool.Enabled = $false
write-host "run"
Start-Job -Name "FactorySync" -ScriptBlock $scriptblock -ArgumentList $Menu_messages.Checked
Wait-Job -Name "FactorySync"
$Menu_state2.Text = Receive-Job -name "FactorySync" -ErrorAction SilentlyContinue
Remove-Job -name "FactorySync" -ErrorAction SilentlyContinue
$Menu_start_Tool.Enabled = $true
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
$Main_Tool_Icon.contextMenu.MenuItems.AddRange($Menu_state2)
$Main_Tool_Icon.contextMenu.MenuItems.AddRange($Menu_settings)
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
    if($game_state.length -gt 0 -and $Menu_autosync.Checked -eq $false){
        $Menu_state.Text = "Satisfacory is running. AutoSync is active."
    }
    else{
        $Menu_state.Text = "AutoSync is not active."
    }
    if($game_state.length -gt 0 -and $job_state.count -eq 0 -and $timeout1 -gt $sleeptime -and $Menu_autosync.Checked -eq $false){
        $timeout1 = 0
        $global:push_gamesync = 0
        write-host "run"
        Start-Job -Name "FactorySync" -ScriptBlock $scriptblock -ArgumentList $Menu_messages.Checked
    }
    if($job_state.count -eq 1 -and $job_state[0].State -ne "running" -and $Menu_autosync.Checked -eq $false){
        $Menu_state2.Text = Receive-Job -Id $job_state[0].id -ErrorAction SilentlyContinue
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
# MIIbqgYJKoZIhvcNAQcCoIIbmzCCG5cCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQURS0VPyd3Ktb2N/j6ZHrCwUAV
# /iugghYkMIIDGTCCAgGgAwIBAgIQexbogPXeboFOAZHih7e5LjANBgkqhkiG9w0B
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
# d+2Mk6fjKJ7RfhCujVPrxtJnufxZODDI0Xp4eXtxkSq9p94wggWNMIIEdaADAgEC
# AhAOmxiO+dAt5+/bUOIIQBhaMA0GCSqGSIb3DQEBDAUAMGUxCzAJBgNVBAYTAlVT
# MRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5j
# b20xJDAiBgNVBAMTG0RpZ2lDZXJ0IEFzc3VyZWQgSUQgUm9vdCBDQTAeFw0yMjA4
# MDEwMDAwMDBaFw0zMTExMDkyMzU5NTlaMGIxCzAJBgNVBAYTAlVTMRUwEwYDVQQK
# EwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xITAfBgNV
# BAMTGERpZ2lDZXJ0IFRydXN0ZWQgUm9vdCBHNDCCAiIwDQYJKoZIhvcNAQEBBQAD
# ggIPADCCAgoCggIBAL/mkHNo3rvkXUo8MCIwaTPswqclLskhPfKK2FnC4SmnPVir
# dprNrnsbhA3EMB/zG6Q4FutWxpdtHauyefLKEdLkX9YFPFIPUh/GnhWlfr6fqVcW
# WVVyr2iTcMKyunWZanMylNEQRBAu34LzB4TmdDttceItDBvuINXJIB1jKS3O7F5O
# yJP4IWGbNOsFxl7sWxq868nPzaw0QF+xembud8hIqGZXV59UWI4MK7dPpzDZVu7K
# e13jrclPXuU15zHL2pNe3I6PgNq2kZhAkHnDeMe2scS1ahg4AxCN2NQ3pC4FfYj1
# gj4QkXCrVYJBMtfbBHMqbpEBfCFM1LyuGwN1XXhm2ToxRJozQL8I11pJpMLmqaBn
# 3aQnvKFPObURWBf3JFxGj2T3wWmIdph2PVldQnaHiZdpekjw4KISG2aadMreSx7n
# DmOu5tTvkpI6nj3cAORFJYm2mkQZK37AlLTSYW3rM9nF30sEAMx9HJXDj/chsrIR
# t7t/8tWMcCxBYKqxYxhElRp2Yn72gLD76GSmM9GJB+G9t+ZDpBi4pncB4Q+UDCEd
# slQpJYls5Q5SUUd0viastkF13nqsX40/ybzTQRESW+UQUOsxxcpyFiIJ33xMdT9j
# 7CFfxCBRa2+xq4aLT8LWRV+dIPyhHsXAj6KxfgommfXkaS+YHS312amyHeUbAgMB
# AAGjggE6MIIBNjAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBTs1+OC0nFdZEzf
# Lmc/57qYrhwPTzAfBgNVHSMEGDAWgBRF66Kv9JLLgjEtUYunpyGd823IDzAOBgNV
# HQ8BAf8EBAMCAYYweQYIKwYBBQUHAQEEbTBrMCQGCCsGAQUFBzABhhhodHRwOi8v
# b2NzcC5kaWdpY2VydC5jb20wQwYIKwYBBQUHMAKGN2h0dHA6Ly9jYWNlcnRzLmRp
# Z2ljZXJ0LmNvbS9EaWdpQ2VydEFzc3VyZWRJRFJvb3RDQS5jcnQwRQYDVR0fBD4w
# PDA6oDigNoY0aHR0cDovL2NybDMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0QXNzdXJl
# ZElEUm9vdENBLmNybDARBgNVHSAECjAIMAYGBFUdIAAwDQYJKoZIhvcNAQEMBQAD
# ggEBAHCgv0NcVec4X6CjdBs9thbX979XB72arKGHLOyFXqkauyL4hxppVCLtpIh3
# bb0aFPQTSnovLbc47/T/gLn4offyct4kvFIDyE7QKt76LVbP+fT3rDB6mouyXtTP
# 0UNEm0Mh65ZyoUi0mcudT6cGAxN3J0TU53/oWajwvy8LpunyNDzs9wPHh6jSTEAZ
# NUZqaVSwuKFWjuyk1T3osdz9HNj0d1pcVIxv76FQPfx2CWiEn2/K2yCNNWAcAgPL
# ILCsWKAOQGPFmCLBsln1VWvPJ6tsds5vIy30fnFqI2si/xK4VC0nftg62fC2h5b9
# W9FcrBjDTZ9ztwGpn1eqXijiuZQwggauMIIElqADAgECAhAHNje3JFR82Ees/Shm
# Kl5bMA0GCSqGSIb3DQEBCwUAMGIxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdp
# Q2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xITAfBgNVBAMTGERp
# Z2lDZXJ0IFRydXN0ZWQgUm9vdCBHNDAeFw0yMjAzMjMwMDAwMDBaFw0zNzAzMjIy
# MzU5NTlaMGMxCzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwgSW5jLjE7
# MDkGA1UEAxMyRGlnaUNlcnQgVHJ1c3RlZCBHNCBSU0E0MDk2IFNIQTI1NiBUaW1l
# U3RhbXBpbmcgQ0EwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDGhjUG
# SbPBPXJJUVXHJQPE8pE3qZdRodbSg9GeTKJtoLDMg/la9hGhRBVCX6SI82j6ffOc
# iQt/nR+eDzMfUBMLJnOWbfhXqAJ9/UO0hNoR8XOxs+4rgISKIhjf69o9xBd/qxkr
# PkLcZ47qUT3w1lbU5ygt69OxtXXnHwZljZQp09nsad/ZkIdGAHvbREGJ3HxqV3rw
# N3mfXazL6IRktFLydkf3YYMZ3V+0VAshaG43IbtArF+y3kp9zvU5EmfvDqVjbOSm
# xR3NNg1c1eYbqMFkdECnwHLFuk4fsbVYTXn+149zk6wsOeKlSNbwsDETqVcplicu
# 9Yemj052FVUmcJgmf6AaRyBD40NjgHt1biclkJg6OBGz9vae5jtb7IHeIhTZgirH
# kr+g3uM+onP65x9abJTyUpURK1h0QCirc0PO30qhHGs4xSnzyqqWc0Jon7ZGs506
# o9UD4L/wojzKQtwYSH8UNM/STKvvmz3+DrhkKvp1KCRB7UK/BZxmSVJQ9FHzNklN
# iyDSLFc1eSuo80VgvCONWPfcYd6T/jnA+bIwpUzX6ZhKWD7TA4j+s4/TXkt2ElGT
# yYwMO1uKIqjBJgj5FBASA31fI7tk42PgpuE+9sJ0sj8eCXbsq11GdeJgo1gJASgA
# DoRU7s7pXcheMBK9Rp6103a50g5rmQzSM7TNsQIDAQABo4IBXTCCAVkwEgYDVR0T
# AQH/BAgwBgEB/wIBADAdBgNVHQ4EFgQUuhbZbU2FL3MpdpovdYxqII+eyG8wHwYD
# VR0jBBgwFoAU7NfjgtJxXWRM3y5nP+e6mK4cD08wDgYDVR0PAQH/BAQDAgGGMBMG
# A1UdJQQMMAoGCCsGAQUFBwMIMHcGCCsGAQUFBwEBBGswaTAkBggrBgEFBQcwAYYY
# aHR0cDovL29jc3AuZGlnaWNlcnQuY29tMEEGCCsGAQUFBzAChjVodHRwOi8vY2Fj
# ZXJ0cy5kaWdpY2VydC5jb20vRGlnaUNlcnRUcnVzdGVkUm9vdEc0LmNydDBDBgNV
# HR8EPDA6MDigNqA0hjJodHRwOi8vY3JsMy5kaWdpY2VydC5jb20vRGlnaUNlcnRU
# cnVzdGVkUm9vdEc0LmNybDAgBgNVHSAEGTAXMAgGBmeBDAEEAjALBglghkgBhv1s
# BwEwDQYJKoZIhvcNAQELBQADggIBAH1ZjsCTtm+YqUQiAX5m1tghQuGwGC4QTRPP
# MFPOvxj7x1Bd4ksp+3CKDaopafxpwc8dB+k+YMjYC+VcW9dth/qEICU0MWfNthKW
# b8RQTGIdDAiCqBa9qVbPFXONASIlzpVpP0d3+3J0FNf/q0+KLHqrhc1DX+1gtqpP
# kWaeLJ7giqzl/Yy8ZCaHbJK9nXzQcAp876i8dU+6WvepELJd6f8oVInw1YpxdmXa
# zPByoyP6wCeCRK6ZJxurJB4mwbfeKuv2nrF5mYGjVoarCkXJ38SNoOeY+/umnXKv
# xMfBwWpx2cYTgAnEtp/Nh4cku0+jSbl3ZpHxcpzpSwJSpzd+k1OsOx0ISQ+UzTl6
# 3f8lY5knLD0/a6fxZsNBzU+2QJshIUDQtxMkzdwdeDrknq3lNHGS1yZr5Dhzq6YB
# T70/O3itTK37xJV77QpfMzmHQXh6OOmc4d0j/R0o08f56PGYX/sr2H7yRp11LB4n
# LCbbbxV7HhmLNriT1ObyF5lZynDwN7+YAN8gFk8n+2BnFqFmut1VwDophrCYoCvt
# lUG3OtUVmDG0YgkPCr2B2RP+v6TR81fZvAT6gt4y3wSJ8ADNXcL50CN/AAvkdgIm
# 2fBldkKmKYcJRyvmfxqkhQ/8mJb2VVQrH4D6wPIOK+XW+6kvRBVK5xMOHds3OBqh
# K/bt1nz8MIIGwDCCBKigAwIBAgIQDE1pckuU+jwqSj0pB4A9WjANBgkqhkiG9w0B
# AQsFADBjMQswCQYDVQQGEwJVUzEXMBUGA1UEChMORGlnaUNlcnQsIEluYy4xOzA5
# BgNVBAMTMkRpZ2lDZXJ0IFRydXN0ZWQgRzQgUlNBNDA5NiBTSEEyNTYgVGltZVN0
# YW1waW5nIENBMB4XDTIyMDkyMTAwMDAwMFoXDTMzMTEyMTIzNTk1OVowRjELMAkG
# A1UEBhMCVVMxETAPBgNVBAoTCERpZ2lDZXJ0MSQwIgYDVQQDExtEaWdpQ2VydCBU
# aW1lc3RhbXAgMjAyMiAtIDIwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoIC
# AQDP7KUmOsap8mu7jcENmtuh6BSFdDMaJqzQHFUeHjZtvJJVDGH0nQl3PRWWCC9r
# ZKT9BoMW15GSOBwxApb7crGXOlWvM+xhiummKNuQY1y9iVPgOi2Mh0KuJqTku3h4
# uXoW4VbGwLpkU7sqFudQSLuIaQyIxvG+4C99O7HKU41Agx7ny3JJKB5MgB6FVueF
# 7fJhvKo6B332q27lZt3iXPUv7Y3UTZWEaOOAy2p50dIQkUYp6z4m8rSMzUy5Zsi7
# qlA4DeWMlF0ZWr/1e0BubxaompyVR4aFeT4MXmaMGgokvpyq0py2909ueMQoP6Mc
# D1AGN7oI2TWmtR7aeFgdOej4TJEQln5N4d3CraV++C0bH+wrRhijGfY59/XBT3Eu
# iQMRoku7mL/6T+R7Nu8GRORV/zbq5Xwx5/PCUsTmFntafqUlc9vAapkhLWPlWfVN
# L5AfJ7fSqxTlOGaHUQhr+1NDOdBk+lbP4PQK5hRtZHi7mP2Uw3Mh8y/CLiDXgazT
# 8QfU4b3ZXUtuMZQpi+ZBpGWUwFjl5S4pkKa3YWT62SBsGFFguqaBDwklU/G/O+mr
# Bw5qBzliGcnWhX8T2Y15z2LF7OF7ucxnEweawXjtxojIsG4yeccLWYONxu71LHx7
# jstkifGxxLjnU15fVdJ9GSlZA076XepFcxyEftfO4tQ6dwIDAQABo4IBizCCAYcw
# DgYDVR0PAQH/BAQDAgeAMAwGA1UdEwEB/wQCMAAwFgYDVR0lAQH/BAwwCgYIKwYB
# BQUHAwgwIAYDVR0gBBkwFzAIBgZngQwBBAIwCwYJYIZIAYb9bAcBMB8GA1UdIwQY
# MBaAFLoW2W1NhS9zKXaaL3WMaiCPnshvMB0GA1UdDgQWBBRiit7QYfyPMRTtlwvN
# PSqUFN9SnDBaBgNVHR8EUzBRME+gTaBLhklodHRwOi8vY3JsMy5kaWdpY2VydC5j
# b20vRGlnaUNlcnRUcnVzdGVkRzRSU0E0MDk2U0hBMjU2VGltZVN0YW1waW5nQ0Eu
# Y3JsMIGQBggrBgEFBQcBAQSBgzCBgDAkBggrBgEFBQcwAYYYaHR0cDovL29jc3Au
# ZGlnaWNlcnQuY29tMFgGCCsGAQUFBzAChkxodHRwOi8vY2FjZXJ0cy5kaWdpY2Vy
# dC5jb20vRGlnaUNlcnRUcnVzdGVkRzRSU0E0MDk2U0hBMjU2VGltZVN0YW1waW5n
# Q0EuY3J0MA0GCSqGSIb3DQEBCwUAA4ICAQBVqioa80bzeFc3MPx140/WhSPx/PmV
# OZsl5vdyipjDd9Rk/BX7NsJJUSx4iGNVCUY5APxp1MqbKfujP8DJAJsTHbCYidx4
# 8s18hc1Tna9i4mFmoxQqRYdKmEIrUPwbtZ4IMAn65C3XCYl5+QnmiM59G7hqopvB
# U2AJ6KO4ndetHxy47JhB8PYOgPvk/9+dEKfrALpfSo8aOlK06r8JSRU1NlmaD1TS
# sht/fl4JrXZUinRtytIFZyt26/+YsiaVOBmIRBTlClmia+ciPkQh0j8cwJvtfEiy
# 2JIMkU88ZpSvXQJT657inuTTH4YBZJwAwuladHUNPeF5iL8cAZfJGSOA1zZaX5YW
# sWMMxkZAO85dNdRZPkOaGK7DycvD+5sTX2q1x+DzBcNZ3ydiK95ByVO5/zQQZ/Ym
# Mph7/lxClIGUgp2sCovGSxVK05iQRWAzgOAj3vgDpPZFR+XOuANCR+hBNnF3rf2i
# 6Jd0Ti7aHh2MWsgemtXC8MYiqE+bvdgcmlHEL5r2X6cnl7qWLoVXwGDneFZ/au/C
# lZpLEQLIgpzJGgV8unG1TnqZbPTontRamMifv427GFxD9dAq6OJi7ngE273R+1sK
# qHB+8JeEeOMIA11HLGOoJTiXAdI/Otrl5fbmm9x+LMz/F0xNAKLY1gEOuIvu5uBy
# VYksJxlh9ncBjDGCBPAwggTsAgEBMCswFzEVMBMGA1UEAwwMaG9ja3VsdXMuY29t
# AhB7FuiA9d5ugU4BkeKHt7kuMAkGBSsOAwIaBQCgeDAYBgorBgEEAYI3AgEMMQow
# CKACgAChAoAAMBkGCSqGSIb3DQEJAzEMBgorBgEEAYI3AgEEMBwGCisGAQQBgjcC
# AQsxDjAMBgorBgEEAYI3AgEVMCMGCSqGSIb3DQEJBDEWBBShzPcumjONV3oCDpAx
# TWpLyMRcKDANBgkqhkiG9w0BAQEFAASCAQAVp4B27RQikPN9U9YH6PMrd2T1/qnO
# tGNqtBbVXx81YeGcTo8toQTAB10lSvxFT/YUeNmD99n+H5Msnm3dLNpTfpsA/E03
# H492u5mr/nP19tSDbopLHIDk/jo/Xy/ZR9OeNipKhxfgY6cw8GmW3CDx0F0llgcj
# E0zFFidfAwU/5mTke0pB0xuLQpB+Jx5OqzvJcWHBA0/R/b608nFD56pXhRgKXqxY
# Im2Rq5lFGEnprjpThevOzFbMS3bMnobMeLeckX4SMQueIl0AdfXsyiJmBEhqHoup
# IeaZ/JaiIkXB1/sbO0PtSJCwGxGbeYVryYQbZ+GJeNo7X3f9k2T2g9/IoYIDIDCC
# AxwGCSqGSIb3DQEJBjGCAw0wggMJAgEBMHcwYzELMAkGA1UEBhMCVVMxFzAVBgNV
# BAoTDkRpZ2lDZXJ0LCBJbmMuMTswOQYDVQQDEzJEaWdpQ2VydCBUcnVzdGVkIEc0
# IFJTQTQwOTYgU0hBMjU2IFRpbWVTdGFtcGluZyBDQQIQDE1pckuU+jwqSj0pB4A9
# WjANBglghkgBZQMEAgEFAKBpMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJ
# KoZIhvcNAQkFMQ8XDTIzMDUxMDIxNTEyNFowLwYJKoZIhvcNAQkEMSIEICqKBuJc
# fsnKfHupfFsVFhU/fEKL5ibYOlpfrF3iFtHhMA0GCSqGSIb3DQEBAQUABIICAMdO
# 6KZe+EAEQSqXm2zdb3vmjmvC+tYKoWsyp6aaW+CHH4Impo1whTU7gHMglLaVLcpc
# Lacoes+edBzplGxIYqlCGQKO9HdJ8MBe8ounnfmcvQ9fyaHyVaE4UxiJE/D6gZfc
# e2v4dDg+TkCjLvf+sDKSfKJB+PKfec//ypml2C+UNN3dLbmLSMFJb0AzsIiurydB
# Wf2jvjGn6oZIj4iPZ6j6v/f0A4WU7IhUq1jKEs4WUp940V6c9/Lq0zupaO05r1pE
# A3doWqnTqT5Afzj3otxnmXPVx1+gMzkTnn7N0Jrh5hdUXqgLvjoZOvJVIt9sl5gD
# E2EDelY8NfMuD5PzGcsKSIcYf1djL2dvPk/r29JDUji6eiDC8lb2kDJ7A9XLjXfR
# DwAFN8pl/3OxTmHo5bh2vclLfwUJxaRhUlqnwzYM7kq/bJo75dwndXcdX9yhQGSf
# qZQgjgnSIm3jss85GesNLV1iQrOdTfZ1zjmLv6NtrB75peSuyqtg8fDM9OuutMAQ
# LJt2ATJR3GckJqWao8yrmCFGGHOqqc/ej+bbMkKM45qGHsTO2VcO0qzznJJ37hNr
# h98aucBgisbcpXf3YoZgkYItacqWHLC4uj+CtlbWZWDwNqd4iS2CmTVfCmDzZy2W
# gtYIkh2du62IPt6NAOiGRMxSLjgWEwZeqBoHbbxt
# SIG # End signature block
