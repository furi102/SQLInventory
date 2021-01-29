--Create the Server table
CREATE TABLE [dbo].[Server]
(
[ServerID] INT NOT NULL IDENTITY PRIMARY KEY,
[ServerName] NVARCHAR(128) NOT NULL UNIQUE,
[ClusterFlag] BIT NOT NULL,
[WindowsVersion] NVARCHAR(64) NOT NULL,
[SQLVersion] NVARCHAR(64) NOT NULL,
[ServerCores] TINYINT NOT NULL,
[ServerRAM] BIGINT NOT NULL,
[VirtualFlag] BIT NOT NULL,
[Hypervisor] BIT NULL,
[ApplicationOwner] NVARCHAR(256) NULL,
[ApplicationOwnerEMail] NVARCHAR(512) NULL
) ;
GO