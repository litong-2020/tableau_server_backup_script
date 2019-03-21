Try
{
Set-ExecutionPolicy RemoteSigned -Force
$cmd = "C:\Program Files\Tableau\Tableau Server\10.3\bin\tabadmin.exe"
$arguments = "cleanup --restart"
start-process $cmd $arguments
}

CATCH
{
"Computer Name: $computerName`nError: $($_.Exception.Message)" | Tee-Object -File c:\cleanup-errors.txt
 $x
}
