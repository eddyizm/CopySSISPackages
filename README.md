# Copy SSIS packages from MSDB SQL SERVER 2008 R2 to another SQL SERVER 2008 R2.  
Sql script and batch file used to copy SSIS packages from one server to a new one. I used this one SQL Server 2012 successfully as well.

Requires command line utility dtutil:
    C:\Program Files (x86)\Microsoft SQL Server\130\DTS\Binn\dtutil.exe
    (Path varies on verison ie. 130)
Notes: 
    Assumes default instance and localhost.
    File extraction command line
    'dtutil /sourceserver localhost /SQL "'+ F.FolderPath + '\' + P.PackageName + '" /copy file;".\' + P.PackageName +'.dtsx"' AS cmd

Credit for original base code: 
    [https://dba.stackexchange.com/questions/68481/moving-ssis-packages-to-new-server](https://dba.stackexchange.com/questions/68481/moving-ssis-packages-to-new-server)
