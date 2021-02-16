CREATE TABLE [dbo].[ProfileAchievements] (
    [profileId]     INT NOT NULL,
    [achievementId] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([profileId] ASC, [achievementId] ASC),
    CONSTRAINT [FK_ProfileAchievements_Achievements] FOREIGN KEY ([achievementId]) REFERENCES [dbo].[Achievements] ([id]),
    CONSTRAINT [FK_ProfileAchievements_Profiles] FOREIGN KEY ([profileId]) REFERENCES [dbo].[Profiles] ([id])
);

