$limit = (Get-Date).AddDays(-20)
$path = "D:\Tableau_Server_Backups"

Try
{
# Delete files older than the $limit.
Get-ChildItem -Path $path -Recurse -Force | Where-Object { !$_.PSIsContainer -and $_.CreationTime -lt $limit } | Remove-Item -Force
}

CATCH
{
"Computer Name: $computerName`nError: $($_.Exception.Message)" | Tee-Object -File c:\delete_errors.txt
 $x
}
