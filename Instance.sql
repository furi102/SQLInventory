--Create the Instance table
CREATE TABLE [dbo].[Instance]
(
[InstanceID] INT NOT NULL IDENTITY PRIMARY KEY,
[InstanceName] NVARCHAR(128) NOT NULL UNIQUE,
[ServerID] INT NOT NULL,
[Port] NVARCHAR(8) NOT NULL,
[IPAddress] NVARCHAR(15) NOT NULL,
[SQLServiceAccountID] INT NOT NULL,
[AuthenticationMode] BIT NOT NULL,
[saAccountName] NVARCHAR(128) NULL,
[saAccountPassword] NVARCHAR(64) NULL,
[InstanceClassification] TINYINT NOT NULL,
[InstanceCores] TINYINT NOT NULL,
[InstanceRAM] BIGINT NOT NULL,
[SQLServerAgentAccountID] INT NOT NULL,
CONSTRAINT [FK_Instance_ToServer]
FOREIGN KEY ([ServerID]) REFERENCES [Server]([ServerID]),
CONSTRAINT [FK_Instance_SQL_ToServiceAccount]
FOREIGN KEY ([SQLServiceAccountID]) REFERENCES [ServiceAccount]([ServiceAccountID]),
CONSTRAINT [FK_Instance_Agent_ToServiceAccount]
FOREIGN KEY ([SQLServerAgentAccountID]) REFERENCES [ServiceAccount]
([ServiceAccountID])
) ;
GO