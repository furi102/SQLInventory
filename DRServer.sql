--Create the DRServer table
CREATE TABLE [dbo].[DRServer]
(
[DRServerID] INT NOT NULL IDENTITY ,
[ServerID] INT NOT NULL,
CONSTRAINT [FK_DRServer_ToServer]
FOREIGN KEY ([ServerID]) REFERENCES [Server]([ServerID]),
PRIMARY KEY ([DRServerID], [ServerID])
) ;
GO