use master

-- my Oracle database named 'DBTEST_LOCALHOST'

EXEC sp_addlinkedserver 
	 @server = 'OracleServer', 
	 @srvproduct = 'Oracle', 
     @provider = 'OraOLEDB.Oracle', 
     @datasrc = 'DBTEST_LOCALHOST'

GO

EXEC sp_addlinkedsrvlogin 
	 @rmtsrvname = 'OracleServer', 
	 @useself = 'false', 
	 @rmtuser = 'scott', 
	 @rmtpassword = 'tiger',
	 @locallogin = 'Zen\wz' 
	
GO

select * from openquery(OracleServer, 'select ename, job, sal from SCOTT.EMP')  

delete from openquery(OracleServer, 'SCOTT.EMP') where empno = 6666