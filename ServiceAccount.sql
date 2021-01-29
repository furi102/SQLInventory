--Create the ServiceAccount table
CREATE TABLE [dbo].[ServiceAccount]
(
[ServiceAccountID] INT NOT NULL IDENTITY PRIMARY KEY,
[ServiceAccountName] NVARCHAR(128) NOT NULL UNIQUE,
) ;
GO