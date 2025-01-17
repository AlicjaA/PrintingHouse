USE [EmployeeManagementSystem]
GO
/****** Object:  Table [HumanResources].[Department]    Script Date: 14.12.2019 19:03:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HumanResources].[Department](
	[DepartmentID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [dbo].[Name] NOT NULL,
	[GroupName] [dbo].[Name] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Department_DepartmentID] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [HumanResources].[Department] ON 

INSERT [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (1, N'Engineering', N'Research and Development', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (2, N'Tool Design', N'Research and Development', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (3, N'Sales', N'Sales and Marketing', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (4, N'Marketing', N'Sales and Marketing', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (5, N'Purchasing', N'Inventory Management', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (6, N'Research and Development', N'Research and Development', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (7, N'Production', N'Manufacturing', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (8, N'Production Control', N'Manufacturing', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (9, N'Human Resources', N'Executive General and Administration', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (10, N'Finance', N'Executive General and Administration', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (11, N'Information Services', N'Executive General and Administration', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (12, N'Document Control', N'Quality Assurance', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (13, N'Quality Assurance', N'Quality Assurance', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (14, N'Facilities and Maintenance', N'Executive General and Administration', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (15, N'Shipping and Receiving', N'Inventory Management', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (16, N'Executive', N'Executive General and Administration', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [HumanResources].[Department] OFF
ALTER TABLE [HumanResources].[Department] ADD  CONSTRAINT [DF_Department_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primary key for Department records.' , @level0type=N'SCHEMA',@level0name=N'HumanResources', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'COLUMN',@level2name=N'DepartmentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the department.' , @level0type=N'SCHEMA',@level0name=N'HumanResources', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the group to which the department belongs.' , @level0type=N'SCHEMA',@level0name=N'HumanResources', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'COLUMN',@level2name=N'GroupName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time the record was last updated.' , @level0type=N'SCHEMA',@level0name=N'HumanResources', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Default constraint value of GETDATE()' , @level0type=N'SCHEMA',@level0name=N'HumanResources', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'CONSTRAINT',@level2name=N'DF_Department_ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primary key (clustered) constraint' , @level0type=N'SCHEMA',@level0name=N'HumanResources', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'CONSTRAINT',@level2name=N'PK_Department_DepartmentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lookup table containing the departments within the Adventure Works Cycles company.' , @level0type=N'SCHEMA',@level0name=N'HumanResources', @level1type=N'TABLE',@level1name=N'Department'
GO
