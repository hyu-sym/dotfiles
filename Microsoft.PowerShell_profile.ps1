function claude {
    Set-Location "C:\Users\HYU\Documents\99_claude_projects"
    & "C:\Users\HYU\.local\bin\claude.exe" @args
}

# PostgreSQL 인코딩 설정
$env:PGCLIENTENCODING = "UTF8"
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
chcp 65001 | Out-Null

# Notepad++ 설정
 Set-Alias notepad++ "C:\Program Files\Notepad++\notepad++.exe"