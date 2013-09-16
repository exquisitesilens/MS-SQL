use Bla

select * from person 

create rule name_rule as @names IN('A', 'B', 'C', 'D', 'E', 'F', 'G')

GO

exec sp_bindrule name_rule, 'person.name'

GO

insert person(ID, name) values(8, 'O'); --> failed!

GO

exec sp_unbindrule 'person.name'

insert person(ID, name) values(8, 'O'); --> done.