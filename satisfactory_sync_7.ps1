function set-language {
    param([string]$WinSystemLocale)
    switch ($WinSystemLocale) {
        "de-DE" {
            $global:language_part1 = "FTP-Einstellungen"
            $global:language_part2 = "FTP-Adresse:"
            $global:language_part3 = "Benutzername:"
            $global:language_part4 = "Passwort:"
            $global:language_part5 = "OK"
            $global:language_part6 = "Abbrechen"
            $global:language_part7 = "Bitte wählen Sie das Speicherverzeichnis für Satisfactory aus:
$env:LOCALAPPDATA\FactoryGame\Saved\SaveGames\[XXXXXXXXXXX]"
            $global:language_part8 = "wurde erfolgreich hochgeladen"
            $global:language_part9 = "Fehler beim Hochladen"
            $global:language_part10 = "wurde heruntergeladen"
            $global:language_part11 = "Fehler beim Herunterladen von"
            $global:language_part12 = "Fehler bei der Synchronisation"
            $global:language_part13 = "ERFOLG"
            $global:language_part14 = "FEHLER"
            $global:language_part15 = "Satisfactory Sync"
            $global:language_part16 = "Satisfactory läuft. AutoSync ist aktiv."
            $global:language_part17 = "Es wurden keine Dateien synchronisiert."
            $global:language_part18 = "Einstellungen"
            $global:language_part19 = "Meldungen deaktivieren"
            $global:language_part20 = "AutoSync deaktivieren"
            $global:language_part21 = "FTP-Einstellungen bearbeiten"
            $global:language_part22 = "Spielverzeichnis bearbeiten"
            $global:language_part23 = "Synchronisationsverlauf anzeigen"
            $global:language_part24 = "Synchronisationsverlauf leeren"
            $global:language_part25 = "Einmalige Synchronisation starten"
            $global:language_part26 = "Beenden"
            $global:language_part27 = "AutoSync ist nicht aktiv."
            $global:language_part28 = "Sprache"
        }
        #"en-US" { #is default
        
        #}
        "fr-FR" {
            $global:language_part1 = "Paramètres FTP"
            $global:language_part2 = "Adresse FTP:"
            $global:language_part3 = "Nom d'utilisateur:"
            $global:language_part4 = "Mot de passe:"
            $global:language_part5 = "OK"
            $global:language_part6 = "Annuler"
            $global:language_part7 = "Veuillez sélectionner le répertoire de sauvegarde pour Satisfactory :
$env:LOCALAPPDATA\FactoryGame\Saved\SaveGames\[XXXXXXXXXXX]"
            $global:language_part8 = "a été téléversé avec succès"
            $global:language_part9 = "Erreur lors du téléversement"
            $global:language_part10 = "a été téléchargé"
            $global:language_part11 = "Erreur lors du téléchargement"
            $global:language_part12 = "Erreur de synchronisation"
            $global:language_part13 = "SUCCÈS"
            $global:language_part14 = "ERREUR"
            $global:language_part15 = "Satisfactory Sync"
            $global:language_part16 = "Satisfactory est en cours d'exécution. La synchronisation automatique est active."
            $global:language_part17 = "Aucun fichier n'a été synchronisé."
            $global:language_part18 = "Paramètres"
            $global:language_part19 = "Désactiver les messages"
            $global:language_part20 = "Désactiver la synchronisation automatique"
            $global:language_part21 = "Modifier les paramètres FTP"
            $global:language_part22 = "Modifier le dossier du jeu"
            $global:language_part23 = "Afficher l'historique de synchronisation"
            $global:language_part24 = "Effacer l'historique de synchronisation"
            $global:language_part25 = "Lancer une synchronisation ponctuelle"
            $global:language_part26 = "Quitter"
            $global:language_part27 = "La synchronisation automatique n'est pas active."
            $global:language_part28 = "Langue"
        }
        "es-ES" {
            $global:language_part1 = "Configuración FTP"
            $global:language_part2 = "Dirección FTP:"
            $global:language_part3 = "Nombre de usuario:"
            $global:language_part4 = "Contraseña:"
            $global:language_part5 = "OK"
            $global:language_part6 = "Cancelar"
            $global:language_part7 = "Por favor, selecciona el directorio de guardado para Satisfactory:
$env:LOCALAPPDATA\FactoryGame\Saved\SaveGames\[XXXXXXXXXXX]"
            $global:language_part8 = "se ha subido correctamente"
            $global:language_part9 = "Error al subir"
            $global:language_part10 = "se ha descargado"
            $global:language_part11 = "Error al descargar"
            $global:language_part12 = "Error de sincronización"
            $global:language_part13 = "ÉXITO"
            $global:language_part14 = "ERROR"
            $global:language_part15 = "Satisfactory Sync"
            $global:language_part16 = "Satisfactory está en ejecución. AutoSync está activo."
            $global:language_part17 = "No se han sincronizado archivos."
            $global:language_part18 = "Configuración"
            $global:language_part19 = "Desactivar mensajes"
            $global:language_part20 = "Desactivar AutoSync"
            $global:language_part21 = "Editar configuración FTP"
            $global:language_part22 = "Editar carpeta del juego"
            $global:language_part23 = "Ver historial de sincronización"
            $global:language_part24 = "Borrar historial de sincronización"
            $global:language_part25 = "Iniciar sincronización única"
            $global:language_part26 = "Salir"
            $global:language_part27 = "AutoSync no está activo."
            $global:language_part28 = "Idioma"
        }
        "it-IT" {
            $global:language_part1 = "Impostazioni FTP"
            $global:language_part2 = "Indirizzo FTP:"
            $global:language_part3 = "Nome utente:"
            $global:language_part4 = "Password:"
            $global:language_part5 = "OK"
            $global:language_part6 = "Annulla"
            $global:language_part7 = "Selezionare la directory di salvataggio per Satisfactory:
$env:LOCALAPPDATA\FactoryGame\Saved\SaveGames\[XXXXXXXXXXX]"
            $global:language_part8 = "caricato con successo"
            $global:language_part9 = "Errore durante il caricamento"
            $global:language_part10 = "scaricato con successo"
            $global:language_part11 = "Errore durante il download di"
            $global:language_part12 = "Errore di sincronizzazione"
            $global:language_part13 = "SUCCESSO"
            $global:language_part14 = "ERRORE"
            $global:language_part15 = "Satisfactory Sync"
            $global:language_part16 = "Satisfactory è in esecuzione. L'AutoSync è attivo."
            $global:language_part17 = "Nessun file è stato sincronizzato."
            $global:language_part18 = "Impostazioni"
            $global:language_part19 = "Disabilita messaggi"
            $global:language_part20 = "Disabilita AutoSync"
            $global:language_part21 = "Modifica impostazioni FTP"
            $global:language_part22 = "Modifica cartella di gioco"
            $global:language_part23 = "Visualizza cronologia di sincronizzazione"
            $global:language_part24 = "Cancella cronologia di sincronizzazione"
            $global:language_part25 = "Avvia sincronizzazione una tantum"
            $global:language_part26 = "Esci"
            $global:language_part27 = "L'AutoSync non è attivo."
            $global:language_part28 = "Lingua"
        }
        "ja-JP" {
            $global:language_part1 = "FTP設定"
            $global:language_part2 = "FTPアドレス："
            $global:language_part3 = "ユーザー名："
            $global:language_part4 = "パスワード："
            $global:language_part5 = "OK"
            $global:language_part6 = "キャンセル"
            $global:language_part7 = "Satisfactoryの保存ファイルディレクトリを選択してください：
$env:LOCALAPPDATA\FactoryGame\Saved\SaveGames\[XXXXXXXXXXX]"
            $global:language_part8 = "アップロードに成功しました"
            $global:language_part9 = "アップロードエラー"
            $global:language_part10 = "ダウンロードが完了しました"
            $global:language_part11 = "ダウンロードエラー"
            $global:language_part12 = "同期エラー"
            $global:language_part13 = "成功"
            $global:language_part14 = "エラー"
            $global:language_part15 = "Satisfactory Sync"
            $global:language_part16 = "Satisfacoryが実行中です。自動同期が有効です。"
            $global:language_part17 = "ファイルは同期されていません。"
            $global:language_part18 = "設定"
            $global:language_part19 = "メッセージを無効にする"
            $global:language_part20 = "自動同期を無効にする"
            $global:language_part21 = "FTP設定を編集"
            $global:language_part22 = "ゲームフォルダーを編集"
            $global:language_part23 = "同期履歴を表示"
            $global:language_part24 = "同期履歴をクリア"
            $global:language_part25 = "ワンタイム同期を実行"
            $global:language_part26 = "終了"
            $global:language_part27 = "自動同期は無効です。"
            $global:language_part28 = "言語"
        }
        "sv-SE" {
            $global:language_part1 = "FTP-inställningar"
            $global:language_part2 = "FTP-adress:"
            $global:language_part3 = "Användarnamn:"
            $global:language_part4 = "Lösenord:"
            $global:language_part5 = "OK"
            $global:language_part6 = "Avbryt"
            $global:language_part7 = "Välj sparplats för Satisfactory-filer:
$env:LOCALAPPDATA\FactoryGame\Saved\SaveGames[XXXXXXXXXXX]"
            $global:language_part8 = "uppladdad med framgång"
            $global:language_part9 = "Fel vid uppladdning"
            $global:language_part10 = "nerladdad med framgång"
            $global:language_part11 = "Fel vid nedladdning av"
            $global:language_part12 = "Synchroniseringsfel"
            $global:language_part13 = "LYCKADES"
            $global:language_part14 = "FEL"
            $global:language_part15 = "Satisfactory Sync"
            $global:language_part16 = "Satisfactory körs. AutoSync är aktiv."
            $global:language_part17 = "Inga filer har synkroniserats."
            $global:language_part18 = "Inställningar"
            $global:language_part19 = "Inaktivera meddelanden"
            $global:language_part20 = "Inaktivera AutoSync"
            $global:language_part21 = "Redigera FTP-inställningar"
            $global:language_part22 = "Redigera spelmapp"
            $global:language_part23 = "Visa synkroniseringshistorik"
            $global:language_part24 = "Rensa synkroniseringshistorik"
            $global:language_part25 = "Starta engångssynkronisering"
            $global:language_part26 = "Avsluta"
            $global:language_part27 = "AutoSync är inte aktiv."
            $global:language_part28 = "Språk"
        }
        "zh-CN" {
            $global:language_part1 = "FTP设置"
            $global:language_part2 = "FTP地址："
            $global:language_part3 = "用户名："
            $global:language_part4 = "密码："
            $global:language_part5 = "确定"
            $global:language_part6 = "取消"
            $global:language_part7 = "请选择 Satisfactory 的保存文件夹：
$env:LOCALAPPDATA\FactoryGame\Saved\SaveGames[XXXXXXXXXXX]"
            $global:language_part8 = "上传成功"
            $global:language_part9 = "上传错误"
            $global:language_part10 = "下载成功"
            $global:language_part11 = "下载错误"
            $global:language_part12 = "同步错误"
            $global:language_part13 = "成功"
            $global:language_part14 = "错误"
            $global:language_part15 = "Satisfactory 同步"
            $global:language_part16 = "Satisfactory 正在运行。自动同步已启用。"
            $global:language_part17 = "未同步任何文件。"
            $global:language_part18 = "设置"
            $global:language_part19 = "禁用消息"
            $global:language_part20 = "禁用自动同步"
            $global:language_part21 = "编辑 FTP 设置"
            $global:language_part22 = "编辑游戏文件夹"
            $global:language_part23 = "查看同步历史记录"
            $global:language_part24 = "清除同步历史记录"
            $global:language_part25 = "启动一次性同步"
            $global:language_part26 = "退出"
            $global:language_part27 = "自动"
            $global:language_part28 = "语言"
        }
        default {
            $global:language_part1 = "FTP-Settings"
            $global:language_part2 = "FTP-address:"
            $global:language_part3 = "Username:"
            $global:language_part4 = "Password:"
            $global:language_part5 = "ok"
            $global:language_part6 = "cancel"
            $global:language_part7 = "Please select the save file directory for Satisfactory:
$env:LOCALAPPDATA\FactoryGame\Saved\SaveGames\[XXXXXXXXXXX]"
            $global:language_part8 = "was uploaded successfully"
            $global:language_part9 = "Error uploading"
            $global:language_part10 = "has been downloaded"
            $global:language_part11 = "Error downloading"
            $global:language_part12 = "Synchronization error"
            $global:language_part13 = "SUCCESS"
            $global:language_part14 = "ERROR"
            $global:language_part15 = "Satisfactory Sync"
            $global:language_part16 = "Satisfacory is running. AutoSync is active."
            $global:language_part17 = "No files have been synced."
            $global:language_part18 = "Settings"
            $global:language_part19 = "Disable messages"
            $global:language_part20 = "Disable AutoSync"
            $global:language_part21 = "Edit FTP settings"
            $global:language_part22 = "Edit game folder"
            $global:language_part23 = "View sync history"
            $global:language_part24 = "Clear sync history"
            $global:language_part25 = "Initiate one-time sync"
            $global:language_part26 = "Exit"
            $global:language_part27 = "AutoSync is not active."
            $global:language_part28 = "Language"
        }
    }
}
set-language -WinSystemLocale (Get-WinSystemLocale).name
$global:lg = (Get-WinSystemLocale).name
Add-Type -AssemblyName System.Windows.Forms
# Pfad zur Textdatei, in der die Eingaben gespeichert werden
$filePath = Join-Path $env:USERPROFILE "syncdata_satisfactory.txt"

# Prüfen, ob die Datei existiert. Wenn nicht, Formular anzeigen
if (!(Test-Path $filePath)) {

    # Formular erstellen
    $form = New-Object System.Windows.Forms.Form
    $form.Text = $global:language_part1
    $form.ClientSize = New-Object System.Drawing.Size(400, 200)
    $form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedDialog
    $form.MaximizeBox = $false
    $form.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen

    # FTP-Pfad Eingabe erstellen
    $ftpPathLabel = New-Object System.Windows.Forms.Label
    $ftpPathLabel.Location = New-Object System.Drawing.Point(10, 20)
    $ftpPathLabel.Size = New-Object System.Drawing.Size(80, 20)
    $ftpPathLabel.Text = $global:language_part2
    $form.Controls.Add($ftpPathLabel)

    $ftpPathTextBox = New-Object System.Windows.Forms.TextBox
    $ftpPathTextBox.Location = New-Object System.Drawing.Point(100, 20)
    $ftpPathTextBox.Size = New-Object System.Drawing.Size(280, 20)
    $form.Controls.Add($ftpPathTextBox)

    # Benutzername Eingabe erstellen
    $usernameLabel = New-Object System.Windows.Forms.Label
    $usernameLabel.Location = New-Object System.Drawing.Point(10, 60)
    $usernameLabel.Size = New-Object System.Drawing.Size(80, 20)
    $usernameLabel.Text = $global:language_part3
    $form.Controls.Add($usernameLabel)

    $usernameTextBox = New-Object System.Windows.Forms.TextBox
    $usernameTextBox.Location = New-Object System.Drawing.Point(100, 60)
    $usernameTextBox.Size = New-Object System.Drawing.Size(280, 20)
    $form.Controls.Add($usernameTextBox)

    # Passwort Eingabe erstellen
    $passwordLabel = New-Object System.Windows.Forms.Label
    $passwordLabel.Location = New-Object System.Drawing.Point(10, 100)
    $passwordLabel.Size = New-Object System.Drawing.Size(80, 20)
    $passwordLabel.Text = $global:language_part4
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
    $okButton.Text = $global:language_part5
    $okButton.DialogResult = [System.Windows.Forms.DialogResult]::OK
    $form.Controls.Add($okButton)

    $cancelButton = New-Object System.Windows.Forms.Button
    $cancelButton.Location = New-Object System.Drawing.Point(200, 140)
    $cancelButton.Size = New-Object System.Drawing.Size(80, 25)
    $cancelButton.Text = $global:language_part6
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
}
else {
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
    $dialog.Description = $global:language_part7
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
                        Show-MessageForm -Message "$remoteFilePath $global:language_part8" -Color "Green"
                    }
                    $up ++
                }
                catch{
                    $sync_error ++
                    if($args[0] -eq $false){
                        Show-MessageForm -Message "$global:language_part9 $remoteFilePath" -Color "DarkRed"
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
                        Show-MessageForm -Message "$global:language_part10 $fileName"  -Color "Green"
                    }
                    $down ++
                }
                catch{
                    if($args[0] -eq $false){
                        Show-MessageForm -Message "$global:language_part11 $fileName"  -Color "DarkRed"
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
        return (get-date -Format HH:mm:ss) + " | $global:language_part13 | UP: $up DOWN: $down"
    }
    else{
        if($args[0] -eq $false){
            Show-MessageForm -Message $global:language_part12 -Color "DarkRed"
        }
        return (get-date -Format HH:mm:ss) + " | $global:language_part14 | UP: $up DOWN: $down"
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
$form.Text = $global:language_part15
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
$Main_Tool_Icon.Text = $global:language_part15
$Main_Tool_Icon.Icon = $icon
$Main_Tool_Icon.Visible = $true

# Add Restart the tool
$Menu_state = New-Object System.Windows.Forms.MenuItem
$Menu_state.Enabled = $false
$Menu_state.Text = $global:language_part16

# Add Restart the tool
$Menu_state2 = New-Object System.Windows.Forms.MenuItem
$Menu_state2.Enabled = $false
$Menu_state2.Text = $global:language_part17

# Add Restart the tool
$Menu_settings = New-Object System.Windows.Forms.MenuItem
$Menu_settings.Enabled = $true
$Menu_settings.Text = $global:language_part18

$Menu_messages = $Menu_settings.MenuItems.Add($global:language_part19)
$Menu_autosync = $Menu_settings.MenuItems.Add($global:language_part20)
$Menu_language = $Menu_settings.MenuItems.Add($global:language_part28)
$languages_en = $Menu_language.MenuItems.Add("EN - English")
$languages_de = $Menu_language.MenuItems.Add("DE - Deutsch")
$languages_fr = $Menu_language.MenuItems.Add("FR - Français")
$languages_es = $Menu_language.MenuItems.Add("ES - Español")
$languages_it = $Menu_language.MenuItems.Add("IT - Italiano")
$languages_jp = $Menu_language.MenuItems.Add("JP - 日本語")
$languages_se = $Menu_language.MenuItems.Add("SE - Svenska")
$languages_cn = $Menu_language.MenuItems.Add("CN - 中文")

$languages_en.add_click({set-language -WinSystemLocale "en-US";$global:lg = "en-US";update-language})
$languages_de.add_click({set-language -WinSystemLocale "de-DE";$global:lg = "de-DE";update-language})
$languages_fr.add_click({set-language -WinSystemLocale "fr-FR";$global:lg = "fr-FR";update-language})
$languages_es.add_click({set-language -WinSystemLocale "es-ES";$global:lg = "es-ES";update-language})
$languages_it.add_click({set-language -WinSystemLocale "it-IT";$global:lg = "it-IT";update-language})
$languages_jp.add_click({set-language -WinSystemLocale "ja-JP";$global:lg = "ja-JP";update-language})
$languages_se.add_click({set-language -WinSystemLocale "sv-SE";$global:lg = "sv-SE";update-language})
$languages_cn.add_click({set-language -WinSystemLocale "zh-CN";$global:lg = "zh-CN";update-language})

function update-language {
    $Main_Tool_Icon.Text = $global:language_part15
    $Menu_state.Text = $global:language_part16
    $Menu_state2.Text = $global:language_part17
    $Menu_settings.Text = $global:language_part18
    $Menu_start_Tool.Text = $global:language_part25
    $Menu_Exit.Text = $global:language_part26
    $Menu_messages.text = $global:language_part19
    $Menu_autosync.text = $global:language_part20
    $Menu_language.text = $global:language_part28
    $Menu_ftpsettings.text = $global:language_part21
    $Menu_gamefolder.text = $global:language_part22
    $Menu_viewhistory.text = $global:language_part23
    $Menu_clearhistory.text = $global:language_part24
    if($global:lg -eq "en-US"){
        $languages_en.Checked = $true
    }
    else{
        $languages_en.Checked = $false
    }
    if($global:lg -eq "de-DE"){
        $languages_de.Checked = $true
    }
    else{
        $languages_de.Checked = $false
    }
    if($global:lg -eq "fr-FR"){
        $languages_fr.Checked = $true
    }
    else{
        $languages_fr.Checked = $false
    }
    if($global:lg -eq "es-ES"){
        $languages_es.Checked = $true
    }
    else{
        $languages_es.Checked = $false
    }
    if($global:lg -eq "it-IT"){
        $languages_it.Checked = $true
    }
    else{
        $languages_it.Checked = $false
    }
    if($global:lg -eq "ja-JP"){
        $languages_jp.Checked = $true
    }
    else{
        $languages_jp.Checked = $false
    }
    if($global:lg -eq "sv-SE"){
        $languages_se.Checked = $true
    }
    else{
        $languages_se.Checked = $false
    }
    if($global:lg -eq "zh-CN"){
        $languages_cn.Checked = $true
    }
    else{
        $languages_cn.Checked = $false
    }
}

update-language

$Menu_ftpsettings = $Menu_settings.MenuItems.Add($global:language_part21)
$Menu_gamefolder = $Menu_settings.MenuItems.Add($global:language_part22)
$Menu_viewhistory = $Menu_settings.MenuItems.Add($global:language_part23)
$Menu_clearhistory = $Menu_settings.MenuItems.Add($global:language_part24)

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
$Menu_start_Tool.Text = $global:language_part25
$Menu_start_Tool.add_click({
$Menu_start_Tool.Enabled = $false
#write-host "run"
Start-Job -Name $global:language_part15 -ScriptBlock $scriptblock -ArgumentList $Menu_messages.Checked
Wait-Job -Name $global:language_part15
$Menu_state2.Text = Receive-Job -name $global:language_part15 -ErrorAction SilentlyContinue
Remove-Job -name $global:language_part15 -ErrorAction SilentlyContinue
$Menu_start_Tool.Enabled = $true
})
 
# Add menu exit
$Menu_Exit = New-Object System.Windows.Forms.MenuItem
$Menu_Exit.Text = $global:language_part26
$Menu_Exit.add_click({
    $global:run = $false
    $job_state = Get-Job -Name $global:language_part15 -ErrorAction SilentlyContinue
    foreach($job in $job_state){
        if($job.state -ne "running"){
            Remove-Job -name $global:language_part15 -ErrorAction SilentlyContinue
			Remove-Job -Id $job.id  -ErrorAction SilentlyContinue
        }
        else{
            Stop-Job -name $global:language_part15 -ErrorAction SilentlyContinue
            Remove-Job -name $global:language_part15 -ErrorAction SilentlyContinue
			Stop-Job -Id $job.id -ErrorAction SilentlyContinue
            Remove-Job -Id $job.id -ErrorAction SilentlyContinue
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
        try{$job_state = Get-Job -Name $global:language_part15 -ErrorAction SilentlyContinue}
        catch{$job_state = ""}
        $timeout2 = 0
        #write-host "Check"
    }
    $timeout1 ++
    $timeout2 ++
    if($game_state.length -gt 0 -and $Menu_autosync.Checked -eq $false){
        $Menu_state.Text = $global:language_part16
    }
    else{
        $Menu_state.Text = $global:language_part27
    }
    if($game_state.length -gt 0 -and $job_state.count -eq 0 -and $timeout1 -gt $sleeptime -and $Menu_autosync.Checked -eq $false){
        $timeout1 = 0
        $global:push_gamesync = 0
        write-host "run"
        Start-Job -Name $global:language_part15 -ScriptBlock $scriptblock -ArgumentList $Menu_messages.Checked
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