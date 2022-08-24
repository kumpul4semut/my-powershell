clear;
# Prompt
Import-Module posh-git
Import-Module oh-my-posh
Import-Module Terminal-Icons
#Set-PoshPrompt Paradox
oh-my-posh --init --shell pwsh --config ~/.config/powershell/bubbles.omp.json | Invoke-Expression
# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-ALias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
 
Import-Module PSReadLine

# Shows navigable menu of all options when hitting Tab
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# Autocompleteion for Arrow keys
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PSReadLineOption -ShowToolTips
Set-PSReadLineOption -PredictionSource History

# jumper to htdocs
function htdocs { set-location "E:\xampp\htdocs" }
function kurmamedia { set-location "E:\xampp\htdocs\kurmamedia"}
function iqmah { set-location "E:\xampp\htdocs\iqmah" }