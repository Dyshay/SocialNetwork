﻿CREATE TABLE [dbo].[Fil]
(
	[FilID] INT NOT NULL IDENTITY(1,1),
	[Text] VARCHAR(500) NOT NULL,
	[DateLigne] DATETIME2 NOT NULL DEFAULT CONVERT (datetime, GETDATE()),
	[UsersID] INT NOT NULL

	CONSTRAINT FK_UsersID FOREIGN KEY (UsersID) REFERENCES Utilisateurs(UsersID)
	CONSTRAINT PK_FilID PRIMARY KEY (FilID)
)
