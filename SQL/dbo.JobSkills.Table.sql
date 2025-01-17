USE [EmployeeManagementSystem]
GO

/****** Object:  Table [Skills].[JobSkills]    Script Date: 15.12.2019 00:17:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Skills].[JobSkills](
	[SkillID] [int] NOT NULL,
	[JobID] [int] NOT NULL,
	[LevelID] [int] NOT NULL,
 CONSTRAINT [PK_JobSkills] PRIMARY KEY CLUSTERED 
(
	[SkillID] ASC,
	[JobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_JobSkills] UNIQUE NONCLUSTERED 
(
	[SkillID] ASC,
	[JobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Skills].[JobSkills]  WITH CHECK ADD  CONSTRAINT [FK_JobSkills_Job] FOREIGN KEY([JobID])
REFERENCES [HumanResources].[Job] ([JobID])
GO

ALTER TABLE [Skills].[JobSkills] CHECK CONSTRAINT [FK_JobSkills_Job]
GO

ALTER TABLE [Skills].[JobSkills]  WITH CHECK ADD  CONSTRAINT [FK_JobSkills_Level] FOREIGN KEY([LevelID])
REFERENCES [Skills].[Level] ([LevelID])
GO

ALTER TABLE [Skills].[JobSkills] CHECK CONSTRAINT [FK_JobSkills_Level]
GO

ALTER TABLE [Skills].[JobSkills]  WITH CHECK ADD  CONSTRAINT [FK_JobSkills_Skill] FOREIGN KEY([SkillID])
REFERENCES [Skills].[Skill] ([SkillID])
GO

ALTER TABLE [Skills].[JobSkills] CHECK CONSTRAINT [FK_JobSkills_Skill]
GO


