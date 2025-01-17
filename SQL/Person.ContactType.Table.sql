USE [EmployeeManagementSystem]
GO
/****** Object:  Table [Person].[ContactType]    Script Date: 14.12.2019 19:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Person].[ContactType](
	[ContactTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [dbo].[Name] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ContactType_ContactTypeID] PRIMARY KEY CLUSTERED 
(
	[ContactTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Person].[ContactType] ON 

INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (1, N'Accounting Manager', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (2, N'Assistant Sales Agent', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (3, N'Assistant Sales Representative', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (4, N'Coordinator Foreign Markets', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (5, N'Export Administrator', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (6, N'International Marketing Manager', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (7, N'Marketing Assistant', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (8, N'Marketing Manager', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (9, N'Marketing Representative', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (10, N'Order Administrator', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (11, N'Owner', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (12, N'Owner/Marketing Assistant', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (13, N'Product Manager', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (14, N'Purchasing Agent', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (15, N'Purchasing Manager', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (16, N'Regional Account Representative', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (17, N'Sales Agent', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (18, N'Sales Associate', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (19, N'Sales Manager', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
INSERT [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (20, N'Sales Representative', CAST(N'2008-04-30T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [Person].[ContactType] OFF
ALTER TABLE [Person].[ContactType] ADD  CONSTRAINT [DF_ContactType_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primary key for ContactType records.' , @level0type=N'SCHEMA',@level0name=N'Person', @level1type=N'TABLE',@level1name=N'ContactType', @level2type=N'COLUMN',@level2name=N'ContactTypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contact type description.' , @level0type=N'SCHEMA',@level0name=N'Person', @level1type=N'TABLE',@level1name=N'ContactType', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time the record was last updated.' , @level0type=N'SCHEMA',@level0name=N'Person', @level1type=N'TABLE',@level1name=N'ContactType', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Default constraint value of GETDATE()' , @level0type=N'SCHEMA',@level0name=N'Person', @level1type=N'TABLE',@level1name=N'ContactType', @level2type=N'CONSTRAINT',@level2name=N'DF_ContactType_ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primary key (clustered) constraint' , @level0type=N'SCHEMA',@level0name=N'Person', @level1type=N'TABLE',@level1name=N'ContactType', @level2type=N'CONSTRAINT',@level2name=N'PK_ContactType_ContactTypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lookup table containing the types of business entity contacts.' , @level0type=N'SCHEMA',@level0name=N'Person', @level1type=N'TABLE',@level1name=N'ContactType'
GO
