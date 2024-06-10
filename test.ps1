# Ottieni il percorso della cartella Desktop dell'utente attualmente connesso
$desktopPath = [System.Environment]::GetFolderPath('Desktop')

# Specifica il nome del file
$fileName = "NuovoFile.txt"

# Combina il percorso della cartella Desktop con il nome del file
$filePath = Join-Path -Path $desktopPath -ChildPath $fileName

# Crea il file di testo (se non esiste) e aggiungi del contenuto (facoltativo)
# Usa Out-File per creare un nuovo file o sovrascrivere un file esistente
"Contenuto del file di testo" | Out-File -FilePath $filePath

# Verifica se il file è stato creato
if (Test-Path -Path $filePath) {
    Write-Host "Il file è stato creato con successo: $filePath"
} else {
    Write-Host "Si è verificato un errore durante la creazione del file."
}