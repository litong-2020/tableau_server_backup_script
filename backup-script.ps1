Try
{
Set-ExecutionPolicy RemoteSigned -Force
$cmd = "C:\Program Files\Tableau\Tableau Server\10.3\bin\tabadmin.exe"
$arguments = "backup D:\Tableau_Server_Backups\backup -d"
start-process $cmd $arguments
}

CATCH
{
"Computer Name: $computerName`nError: $($_.Exception.Message)" | Tee-Object -File c:\errors.txt
 $x
}
