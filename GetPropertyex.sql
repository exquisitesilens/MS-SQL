-- gets properties

SELECT DATABASEPROPERTYEX('AdventureWorks', 'IsCloseCursorOnCommitEnabled');

select DATABASEPROPERTYEX('ClassNorthwind', 'UserAccess');

use ClassNorthwind

exec sp_spaceused 'Products'