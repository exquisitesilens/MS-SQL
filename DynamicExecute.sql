use ClassNorthwind

declare @dbname varchar(30), @tablename varchar(30)

set @dbname = 'ClassNorthwind'
set @tablename = 'Products'

execute ('use ' + @dbname + ' select ProductName from ' + @tablename)