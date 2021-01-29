CREATE TABLE [dbo].[Cluster]
(
	[ClusterId] INT NOT NULL IDENTITY PRIMARY KEY, 
    [ClusterName] NVARCHAR(50) NOT NULL,
	CONSTRAINT [FK_Cluster_ToServerName]
    FOREIGN KEY ([ClusterId]) REFERENCES [Server]([ServerID]), 
)
