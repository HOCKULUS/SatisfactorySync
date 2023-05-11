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
$languages_betainfo = $Menu_language.MenuItems.Add("--- BETA ---")
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
# SIG # Begin signature block
# MIIbqgYJKoZIhvcNAQcCoIIbmzCCG5cCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUAJEPjornGl0breQVFxJix/1+
# v/SgghYkMIIDGTCCAgGgAwIBAgIQexbogPXeboFOAZHih7e5LjANBgkqhkiG9w0B
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
# AQsxDjAMBgorBgEEAYI3AgEVMCMGCSqGSIb3DQEJBDEWBBT3L+aSvJjc+tjrXNTa
# fnbth2PdIDANBgkqhkiG9w0BAQEFAASCAQCM0hbJu76fMjRTFxVvcYV1MlKHOjta
# AU115adNnI9icbuBhMlIJwNI1aaWtMOK5Glg7fFEnYBU0KHzPAM7a7t0VRy/n5Y+
# +X9hIGzuY5Q++aJSNyq2oktrqvL8RcVKr99IeOSbZYofZzvVEci0S7zAjsSqIYKj
# RgyN1ha/V7uIhw3EZdZGwCTOABbLP/dlMOwBBd8QiGYzr62Fo7NE4vVKIfKS6tr3
# ysVH9yLhPWDyBsdGSyorI51cf1LiQmllo6jrwkU2T0wabygmX+SN7yKc/BdxLgHR
# 4VY3t2TmKlLFiWZL2FiBraHXzLPk6n8l8YJsSo1SRF19/DZTgMCI8rPLoYIDIDCC
# AxwGCSqGSIb3DQEJBjGCAw0wggMJAgEBMHcwYzELMAkGA1UEBhMCVVMxFzAVBgNV
# BAoTDkRpZ2lDZXJ0LCBJbmMuMTswOQYDVQQDEzJEaWdpQ2VydCBUcnVzdGVkIEc0
# IFJTQTQwOTYgU0hBMjU2IFRpbWVTdGFtcGluZyBDQQIQDE1pckuU+jwqSj0pB4A9
# WjANBglghkgBZQMEAgEFAKBpMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJ
# KoZIhvcNAQkFMQ8XDTIzMDUxMTE4NDg0M1owLwYJKoZIhvcNAQkEMSIEIJbVoHv/
# iDoKUl45tysyRRucPoT/ScApRWfu2dCwWncbMA0GCSqGSIb3DQEBAQUABIICAAuu
# cJfNg3oD3Bv03eAhZgMQgzC1sxANdslKvjP0DVyuPeM7jXSV8rPFn3w5H2RwvvPs
# zT8jLPrOAHwtsWZ2vjT0Io/TLS0+gnUa4ZA1oZkZrzU+GIlkHRcfEt2gRlrfCufc
# m+LYU5fDtdk9/RAsMRiaJ99TK8hQqOEmpT2+lHRhxIdazogcv8jFINwLNQKA0WzT
# XJM8QiVjzhzfBCwFZYeDcEYM5MatnbgW73oSJPUKRLuDxygmr9gIo5Umwbg30l5t
# UFbSYanSElEIjqXxTKbEV/AUj5GZCx1iNNR5FMpWnhGobelCLSZRtCWuBei1Tg/W
# L8MmdJLWbPH2H9jh0ET+nTfSFkyT6trGGq0y3itoajmDCHVrZNYYINNFf9zPF9NY
# Vhxyv9c6O/sm/bmFRstpJrrjAZa0qOR3pG8wdeB840oeq4wa3vX/MDqP5hPfNdaP
# vfE6wezAy8Sx8oRFnbQPmCdmOthJVPBDMh7M/FhwNyLK8fX/xLLY4HEuFBD0VknQ
# f54aNlQp/Ei3lW5YlTL6imfnxqNqo1TB/jPFabpn74OMVjh+GuDjN4/d5Hb2/okJ
# BP75NYOEkMLcMVAdMsCQgWvq4Ru3sYkA+Wqz77KBCA9N4IzjtJomPK6HllEncU9W
# Wr3VW/0D5q2CBHoEd4I1glQX62GUx56bcPDWMxtE
# SIG # End signature block
