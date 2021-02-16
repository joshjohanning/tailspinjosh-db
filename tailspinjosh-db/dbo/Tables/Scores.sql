CREATE TABLE [dbo].[Scores] (
    [id]         INT           NOT NULL,
    [profileId]  INT           NOT NULL,
    [score]      INT           NULL,
    [gameMode]   NVARCHAR (10) NULL,
    [gameRegion] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Scores_Profiles] FOREIGN KEY ([profileId]) REFERENCES [dbo].[Profiles] ([id])
);

