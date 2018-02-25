REM Script to COPY SSIS packages from one SQL_SERVER to another SQL_SERVER
REM ECERVANTES 12.15.2017 
REM USAGE:
REM     Copies MSDB packages from server to server. Script must be altered to move/copy from file system. 
REM     Users SQL Server command line tool: dtutil 
REM     Must be run from origin server. 
REM Notes:  
REM     Yes I know there is no for loop but I couldn't find a way to do that with MSDB packages. 
REM     Text generated using ExtractSSISPackageInformation.sql script. Use that to apply changes. 
REM     <username> and <password> removed for security


dtutil /SQL "\<PACKAGE NAME>" /SOURCEUSER <username> /SOURCEPASSWORD <password> /DestServer <DB_SERVER> /COPY SQL;"\<PACKAGE NAME>" /DESTUSER <username> /DESTPASSWORD <password>
