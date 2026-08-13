$ErrorActionPreference = 'Continue'
$tok = (Get-Content 'C:\Users\Cyn\.rune_garden\github.txt' -Raw).Trim()
Set-Location 'C:\Users\Cyn\Documents\Claude\rune_garden'
git add -A
git commit -m "the fifty-fifth hand: the brackets that didn't travel"
git remote set-url origin "https://x-access-token:$tok@github.com/cynbot/garden.git"
git push origin main 2>&1 | Out-String
git remote set-url origin https://github.com/cynbot/garden.git
"--- remote now ---"
git remote -v
"--- head ---"
git log --oneline -1
