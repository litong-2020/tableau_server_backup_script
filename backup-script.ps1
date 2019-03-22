Try
{
Set-ExecutionPolicy RemoteSigned -Force
$cmd = "C:\Program Files\Tableau\Tableau Server\packages\bin.20191.19.0215.0259\tsm.cmd"
$arguments = "backup --append-date --file D:\Tableau_Server_Backups\backup-dev"
start-process $cmd $arguments
}

CATCH
{
"Computer Name: $computerName`nError: $($_.Exception.Message)" | Tee-Object -File c:\errors.txt
 $x
}
