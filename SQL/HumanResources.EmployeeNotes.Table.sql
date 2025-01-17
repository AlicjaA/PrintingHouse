USE [EmployeeManagementSystem]
GO
/****** Object:  Table [HumanResources].[EmployeeNotes]    Script Date: 14.12.2019 19:03:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HumanResources].[EmployeeNotes](
	[NoteId] [int] IDENTITY(1,1) NOT NULL,
	[BusinessEntityID] [int] NOT NULL,
	[NoteText] [varchar](max) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModifyDate] [datetime] NULL,
	[Comment] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[NoteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [HumanResources].[EmployeeNotes] ON 

INSERT [HumanResources].[EmployeeNotes] ([NoteId], [BusinessEntityID], [NoteText], [CreationDate], [ModifyDate], [Comment]) VALUES (1, 2, N'Test', CAST(N'2019-12-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [HumanResources].[EmployeeNotes] ([NoteId], [BusinessEntityID], [NoteText], [CreationDate], [ModifyDate], [Comment]) VALUES (2, 2, N'Test', CAST(N'2019-12-01T13:01:45.133' AS DateTime), NULL, NULL)
INSERT [HumanResources].[EmployeeNotes] ([NoteId], [BusinessEntityID], [NoteText], [CreationDate], [ModifyDate], [Comment]) VALUES (9, 3, N'Test', CAST(N'2019-12-01T13:09:36.370' AS DateTime), NULL, NULL)
INSERT [HumanResources].[EmployeeNotes] ([NoteId], [BusinessEntityID], [NoteText], [CreationDate], [ModifyDate], [Comment]) VALUES (10, 3, N'Test', CAST(N'2019-12-01T13:09:53.763' AS DateTime), NULL, NULL)
INSERT [HumanResources].[EmployeeNotes] ([NoteId], [BusinessEntityID], [NoteText], [CreationDate], [ModifyDate], [Comment]) VALUES (11, 3, N'Test', CAST(N'2019-12-01T13:11:23.200' AS DateTime), NULL, NULL)
INSERT [HumanResources].[EmployeeNotes] ([NoteId], [BusinessEntityID], [NoteText], [CreationDate], [ModifyDate], [Comment]) VALUES (12, 3, N'Test', CAST(N'2019-12-01T13:15:16.940' AS DateTime), NULL, NULL)
INSERT [HumanResources].[EmployeeNotes] ([NoteId], [BusinessEntityID], [NoteText], [CreationDate], [ModifyDate], [Comment]) VALUES (13, 3, N'Test', CAST(N'2019-12-01T13:21:10.563' AS DateTime), NULL, NULL)
INSERT [HumanResources].[EmployeeNotes] ([NoteId], [BusinessEntityID], [NoteText], [CreationDate], [ModifyDate], [Comment]) VALUES (14, 3, N'Test', CAST(N'2019-12-08T16:41:31.157' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [HumanResources].[EmployeeNotes] OFF
ALTER TABLE [HumanResources].[EmployeeNotes]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeNotes_Employee] FOREIGN KEY([BusinessEntityID])
REFERENCES [HumanResources].[Employee] ([BusinessEntityID])
GO
ALTER TABLE [HumanResources].[EmployeeNotes] CHECK CONSTRAINT [FK_EmployeeNotes_Employee]
GO
