CREATE TABLE ListName(
	FirstName nvarchar(300) NOT NULL,
	LastName nvarchar(300) NOT NULL,
	EmailAddress nvarchar(300) NOT NULL,
)
go

insert into ListName(FirstName,LastName,EmailAddress)
Values('Marco','Antonio','dbtest.@microsoft.com.br')

insert into ListName(FirstName,LastName,EmailAddress)
Values('Daniel','Silva','dbtest.@microsoft.com.br')

insert into ListName(FirstName,LastName,EmailAddress)
Values('João','Chaves','dbtest.@microsoft.com.br')

insert into ListName(FirstName,LastName,EmailAddress)
Values('Aguiar','Justo','dbtest.@microsoft.com.br')

insert into ListName(FirstName,LastName,EmailAddress)
Values('Batista','Cardoso','dbtest.@microsoft.com.br')

go

SELECT TOP (1000) [FirstName]
      ,[LastName]
      ,[EmailAddress]
  FROM [PeopleManager].[dbo].[ListName]

go