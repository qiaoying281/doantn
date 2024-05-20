USE [QLHL]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/20/2024 10:45:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 5/20/2024 10:45:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[accountID] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](max) NOT NULL,
	[avatar] [nvarchar](max) NULL,
	[password] [nvarchar](max) NOT NULL,
	[status] [nvarchar](max) NOT NULL,
	[decentralizationId] [int] NOT NULL,
	[resetPasswordToken] [nvarchar](max) NOT NULL,
	[resetPasswordTokenExpiry] [datetime2](7) NULL,
	[createAt] [datetime2](7) NOT NULL,
	[updateAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[accountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Answers]    Script Date: 5/20/2024 10:45:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answers](
	[answerID] [int] IDENTITY(1,1) NOT NULL,
	[questionID] [int] NOT NULL,
	[rightAnswer] [bit] NOT NULL,
	[content] [nvarchar](max) NOT NULL,
	[createAt] [datetime2](7) NOT NULL,
	[updateAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Answers] PRIMARY KEY CLUSTERED 
(
	[answerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseParts]    Script Date: 5/20/2024 10:45:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseParts](
	[coursePartID] [int] IDENTITY(1,1) NOT NULL,
	[courseID] [int] NOT NULL,
	[partTitle] [nvarchar](max) NOT NULL,
	[amout] [int] NOT NULL,
	[duration] [int] NOT NULL,
	[createAt] [datetime2](7) NOT NULL,
	[updateAt] [datetime2](7) NOT NULL,
	[index] [int] NOT NULL,
 CONSTRAINT [PK_CourseParts] PRIMARY KEY CLUSTERED 
(
	[coursePartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 5/20/2024 10:45:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[courseID] [int] IDENTITY(1,1) NOT NULL,
	[courseName] [nvarchar](max) NOT NULL,
	[courseDescription] [nvarchar](max) NOT NULL,
	[tutorID] [int] NOT NULL,
	[cost] [int] NOT NULL,
	[createAt] [datetime2](7) NOT NULL,
	[updateAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[courseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Decentralizations]    Script Date: 5/20/2024 10:45:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Decentralizations](
	[decentralizationID] [int] IDENTITY(1,1) NOT NULL,
	[authorityName] [nvarchar](max) NOT NULL,
	[createAt] [datetime2](7) NOT NULL,
	[updateAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Decentralizations] PRIMARY KEY CLUSTERED 
(
	[decentralizationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enrollments]    Script Date: 5/20/2024 10:45:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enrollments](
	[enrollmentID] [int] IDENTITY(1,1) NOT NULL,
	[studentID] [int] NOT NULL,
	[courseID] [int] NOT NULL,
	[tutorID] [int] NOT NULL,
	[enrollmentDate] [datetime2](7) NOT NULL,
	[statusTypeID] [int] NOT NULL,
	[createAt] [datetime2](7) NOT NULL,
	[updateAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Enrollments] PRIMARY KEY CLUSTERED 
(
	[enrollmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exams]    Script Date: 5/20/2024 10:45:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exams](
	[examID] [int] IDENTITY(1,1) NOT NULL,
	[coursePartID] [int] NOT NULL,
	[examTypeID] [int] NOT NULL,
	[examName] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[workTime] [int] NOT NULL,
	[dueDate] [datetime2](7) NOT NULL,
	[minGrade] [float] NOT NULL,
	[createAt] [datetime2](7) NOT NULL,
	[updateAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Exams] PRIMARY KEY CLUSTERED 
(
	[examID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamTypes]    Script Date: 5/20/2024 10:45:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamTypes](
	[examTypeID] [int] IDENTITY(1,1) NOT NULL,
	[examTypeName] [nvarchar](max) NOT NULL,
	[createAt] [datetime2](7) NOT NULL,
	[updateAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ExamTypes] PRIMARY KEY CLUSTERED 
(
	[examTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fees]    Script Date: 5/20/2024 10:45:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fees](
	[feeID] [int] IDENTITY(1,1) NOT NULL,
	[studentID] [int] NOT NULL,
	[courseID] [int] NOT NULL,
	[cost] [int] NOT NULL,
	[status] [nvarchar](max) NOT NULL,
	[createAt] [datetime2](7) NOT NULL,
	[updateAt] [datetime2](7) NOT NULL,
	[isChecked] [bit] NOT NULL,
 CONSTRAINT [PK_Fees] PRIMARY KEY CLUSTERED 
(
	[feeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lectures]    Script Date: 5/20/2024 10:45:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lectures](
	[lectureID] [int] IDENTITY(1,1) NOT NULL,
	[coursePartID] [int] NOT NULL,
	[lectureTitle] [nvarchar](max) NOT NULL,
	[lectureLink] [nvarchar](max) NOT NULL,
	[duration] [int] NULL,
	[isWatched] [bit] NOT NULL,
	[isWatching] [bit] NOT NULL,
	[isAvailable] [bit] NOT NULL,
	[createAt] [datetime2](7) NOT NULL,
	[updateAt] [datetime2](7) NOT NULL,
	[index] [int] NOT NULL,
 CONSTRAINT [PK_Lectures] PRIMARY KEY CLUSTERED 
(
	[lectureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentHistorys]    Script Date: 5/20/2024 10:45:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentHistorys](
	[paymentHistoryID] [int] IDENTITY(1,1) NOT NULL,
	[studentID] [int] NOT NULL,
	[paymentTypeID] [int] NOT NULL,
	[paymentName] [nvarchar](max) NOT NULL,
	[amount] [int] NOT NULL,
	[createAt] [datetime2](7) NOT NULL,
	[updateAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_PaymentHistorys] PRIMARY KEY CLUSTERED 
(
	[paymentHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentTypes]    Script Date: 5/20/2024 10:45:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentTypes](
	[paymentTypeID] [int] IDENTITY(1,1) NOT NULL,
	[paymentTypeName] [nvarchar](max) NOT NULL,
	[creatAt] [datetime2](7) NOT NULL,
	[updatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_PaymentTypes] PRIMARY KEY CLUSTERED 
(
	[paymentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 5/20/2024 10:45:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[questionID] [int] IDENTITY(1,1) NOT NULL,
	[examID] [int] NOT NULL,
	[questionName] [nvarchar](max) NOT NULL,
	[createAt] [datetime2](7) NOT NULL,
	[updateAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[questionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusTypes]    Script Date: 5/20/2024 10:45:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusTypes](
	[statusTypeID] [int] IDENTITY(1,1) NOT NULL,
	[statusName] [nvarchar](max) NOT NULL,
	[createAt] [datetime2](7) NOT NULL,
	[updateAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_StatusTypes] PRIMARY KEY CLUSTERED 
(
	[statusTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 5/20/2024 10:45:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[studentID] [int] IDENTITY(1,1) NOT NULL,
	[accountID] [int] NOT NULL,
	[fullName] [nvarchar](max) NOT NULL,
	[contactNumber] [nvarchar](max) NOT NULL,
	[provinceID] [int] NULL,
	[districtID] [int] NULL,
	[communeID] [int] NULL,
	[email] [nvarchar](max) NOT NULL,
	[totalMoney] [int] NOT NULL,
	[createAt] [datetime2](7) NOT NULL,
	[updateAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[studentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Submissions]    Script Date: 5/20/2024 10:45:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Submissions](
	[submissionID] [int] IDENTITY(1,1) NOT NULL,
	[examID] [int] NOT NULL,
	[studentID] [int] NOT NULL,
	[submissionDate] [datetime2](7) NOT NULL,
	[examTimes] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[createAt] [datetime2](7) NOT NULL,
	[updateAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Submissions] PRIMARY KEY CLUSTERED 
(
	[submissionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TutorAssignments]    Script Date: 5/20/2024 10:45:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TutorAssignments](
	[tutorAssignmentID] [int] IDENTITY(1,1) NOT NULL,
	[tutorID] [int] NOT NULL,
	[courseID] [int] NOT NULL,
	[numberOfStudent] [int] NOT NULL,
	[assignmentDate] [datetime2](7) NOT NULL,
	[createAt] [datetime2](7) NOT NULL,
	[updateAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_TutorAssignments] PRIMARY KEY CLUSTERED 
(
	[tutorAssignmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tutors]    Script Date: 5/20/2024 10:45:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tutors](
	[tutorID] [int] IDENTITY(1,1) NOT NULL,
	[accountID] [int] NOT NULL,
	[fullName] [nvarchar](max) NOT NULL,
	[contactNumber] [nvarchar](max) NOT NULL,
	[provinceID] [int] NULL,
	[districtID] [int] NULL,
	[communeID] [int] NULL,
	[email] [nvarchar](max) NOT NULL,
	[createAt] [datetime2](7) NOT NULL,
	[updateAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Tutors] PRIMARY KEY CLUSTERED 
(
	[tutorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VerifyCodes]    Script Date: 5/20/2024 10:45:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VerifyCodes](
	[verifyCodeID] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](max) NOT NULL,
	[code] [nvarchar](max) NOT NULL,
	[expiredTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_VerifyCodes] PRIMARY KEY CLUSTERED 
(
	[verifyCodeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231202103843_initialv1', N'6.0.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231205081034_initalv5', N'6.0.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231205081132_initalv6', N'6.0.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231205082008_initalv7', N'6.0.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231206100118_initialv7', N'6.0.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231207080223_initialv8', N'6.0.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231207094622_initialv9', N'6.0.25')
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([accountID], [email], [avatar], [password], [status], [decentralizationId], [resetPasswordToken], [resetPasswordTokenExpiry], [createAt], [updateAt]) VALUES (4, N'admin', NULL, N'$2a$12$mLCXgj2l9nup.7mu84ML0.uSMS7x/TwGGq7prr4jerS/MkFimUiRC', N'Working', 1, N'eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6Imlka3IzN0BnbWFpbC5jb20iLCJqdGkiOiJmYTZjYjYyZC0yOGRjLTQzNDgtOWEwNS05ODU5YjM0ZmIyMzkiLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3JvbGUiOiJBZG1pbiIsImV4cCI6MTcwMTk3NTQxMn0.PHTifKFKgwSTWU0upv-ZfQY9nAqBugP2Gt-0FKT_MJ4', CAST(N'2023-12-08T01:56:52.9427449' AS DateTime2), CAST(N'2023-12-04T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-04T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Accounts] ([accountID], [email], [avatar], [password], [status], [decentralizationId], [resetPasswordToken], [resetPasswordTokenExpiry], [createAt], [updateAt]) VALUES (5, N'tutor01@gmail.com', N'', N'$2a$12$e1cT7Rd7ilhQOn1yyAXx3uZPEPDVbapu6S854Z0jhFXKgBedr5PoS', N'Working', 3, N'', CAST(N'2023-12-05T14:37:43.2799505' AS DateTime2), CAST(N'2023-12-05T14:37:43.2799532' AS DateTime2), CAST(N'2023-12-05T14:37:43.2800230' AS DateTime2))
INSERT [dbo].[Accounts] ([accountID], [email], [avatar], [password], [status], [decentralizationId], [resetPasswordToken], [resetPasswordTokenExpiry], [createAt], [updateAt]) VALUES (12, N'pktatca8@gmail.com', NULL, N'$2a$12$dF.ci3pJ1Apg01og22QxYud5dXCXG2ZA9zIEzFIIJNXV3CMhq6L3a', N'Working', 2, N'eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6InFpYW95aW5nMjgxQGdtYWlsLmNvbSIsImp0aSI6IjM4OTYxMGFkLWVkMjktNDg4Ny1iYTQ2LTc0YzRjOTk0ZDBiOCIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvcm9sZSI6IlN0dWRlbnQiLCJleHAiOjE3MTM4MjYwOTN9.zC2iABF8BbTx_HfPbzO_Rs425aNmQ0mz7XNe92rQDmA', CAST(N'2024-04-23T05:48:13.4728369' AS DateTime2), CAST(N'2023-12-21T11:42:37.6318893' AS DateTime2), CAST(N'2023-12-21T11:42:37.6319121' AS DateTime2))
INSERT [dbo].[Accounts] ([accountID], [email], [avatar], [password], [status], [decentralizationId], [resetPasswordToken], [resetPasswordTokenExpiry], [createAt], [updateAt]) VALUES (13, N'test1@gmail.com', N'', N'$2a$12$tZEu70UbqhkGJJX2e8J8tOueNSkF3ereLQrOojfARYXXVshpMjfVe', N'Working', 3, N'eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6InRlc3QxQGdtYWlsLmNvbSIsImp0aSI6ImMxMmQwOWI4LTgzODQtNDg0Ni05ZGIxLWI2YzI5MTI0YjQ3MSIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvcm9sZSI6IlR1dG9yIiwiZXhwIjoxNzEzODI3NTY0fQ.h7E-tUydEVSyufv_G-9qA9NL-rdS_UxDskOgwBoRv1s', CAST(N'2024-04-23T06:12:44.5772204' AS DateTime2), CAST(N'2023-12-26T15:08:49.6457599' AS DateTime2), CAST(N'2023-12-26T15:08:49.6457939' AS DateTime2))
INSERT [dbo].[Accounts] ([accountID], [email], [avatar], [password], [status], [decentralizationId], [resetPasswordToken], [resetPasswordTokenExpiry], [createAt], [updateAt]) VALUES (19, N'qiaoying281@gmail.com', NULL, N'$2a$12$RPbpFGD4zYBoEgPYymDr6O/hMKkYrSXIX0Bsv3CeFsIOFUAgCJ2ue', N'Working', 1, N'eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6Imlka3IzN0BnbWFpbC5jb20iLCJqdGkiOiI4ZWQxZjdhNS1hNGZlLTQzNWQtYjU2My1hODk0YTNkODcxYjciLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3JvbGUiOiJBZG1pbiIsImV4cCI6MTcxMzg3MjE4Mn0.1CR-cyTr4_y9fiOlSh6NUqEj-44lMW7ofvkD7foJLeY', CAST(N'2024-04-23T18:36:23.1846564' AS DateTime2), CAST(N'2024-03-29T09:04:27.1204081' AS DateTime2), CAST(N'2024-03-29T09:04:27.1204764' AS DateTime2))
INSERT [dbo].[Accounts] ([accountID], [email], [avatar], [password], [status], [decentralizationId], [resetPasswordToken], [resetPasswordTokenExpiry], [createAt], [updateAt]) VALUES (20, N'tutor@gmail.com', N'', N'$2a$12$DVxjlrB26NUjWduaVlAb0.UAFlrHkretcIYdZZ7G1z1gLzSrWZucu', N'Working', 3, N'', CAST(N'2024-04-23T13:17:07.8360831' AS DateTime2), CAST(N'2024-04-23T13:17:07.8477227' AS DateTime2), CAST(N'2024-04-23T13:17:07.8477688' AS DateTime2))
INSERT [dbo].[Accounts] ([accountID], [email], [avatar], [password], [status], [decentralizationId], [resetPasswordToken], [resetPasswordTokenExpiry], [createAt], [updateAt]) VALUES (21, N'tutor2@gmail.com', N'', N'$2a$12$lfOjoo5nAJPG0Im1siOggeBtAgXulHhuReU3GedYx/BvB2febdioS', N'Working', 3, N'', CAST(N'2024-04-23T13:17:28.1246647' AS DateTime2), CAST(N'2024-04-23T13:17:28.1246664' AS DateTime2), CAST(N'2024-04-23T13:17:28.1246664' AS DateTime2))
INSERT [dbo].[Accounts] ([accountID], [email], [avatar], [password], [status], [decentralizationId], [resetPasswordToken], [resetPasswordTokenExpiry], [createAt], [updateAt]) VALUES (22, N'tutor3@gmail.com', N'', N'$2a$12$qtVjgvFwqqSx.WbGby9GyOvqT07D2f10M8EVW2b3BB0jYBcGvj45q', N'Working', 3, N'', CAST(N'2024-04-23T13:17:41.5085997' AS DateTime2), CAST(N'2024-04-23T13:17:41.5086026' AS DateTime2), CAST(N'2024-04-23T13:17:41.5086027' AS DateTime2))
INSERT [dbo].[Accounts] ([accountID], [email], [avatar], [password], [status], [decentralizationId], [resetPasswordToken], [resetPasswordTokenExpiry], [createAt], [updateAt]) VALUES (23, N'student@gmail.com', N'', N'$2a$12$TF9jaNe61HGv3N4fY.o3Ae5Okw3I.ufLvo6kXmx9i1PCbaOtmFNpG', N'Working', 2, N'', CAST(N'2024-04-23T13:22:36.4909640' AS DateTime2), CAST(N'2024-04-23T13:22:36.4918572' AS DateTime2), CAST(N'2024-04-23T13:22:36.4918577' AS DateTime2))
INSERT [dbo].[Accounts] ([accountID], [email], [avatar], [password], [status], [decentralizationId], [resetPasswordToken], [resetPasswordTokenExpiry], [createAt], [updateAt]) VALUES (24, N'student1@gmail.com', N'', N'$2a$12$I.T70pTmUfj9KdWTPAs7s.AkXja57TeD6SOGJ25KI0ufU7Z42Djiq', N'Working', 2, N'', CAST(N'2024-04-23T13:22:44.7641018' AS DateTime2), CAST(N'2024-04-23T13:22:44.7641044' AS DateTime2), CAST(N'2024-04-23T13:22:44.7641045' AS DateTime2))
INSERT [dbo].[Accounts] ([accountID], [email], [avatar], [password], [status], [decentralizationId], [resetPasswordToken], [resetPasswordTokenExpiry], [createAt], [updateAt]) VALUES (25, N'student2@gmail.com', N'', N'$2a$12$ZQPIvPkiNzCWIbvCJpXw..qPMWA6wy9AYxQ74AylP4VkL1UDzPSte', N'Working', 2, N'', CAST(N'2024-04-23T13:22:49.6884689' AS DateTime2), CAST(N'2024-04-23T13:22:49.6884713' AS DateTime2), CAST(N'2024-04-23T13:22:49.6884714' AS DateTime2))
INSERT [dbo].[Accounts] ([accountID], [email], [avatar], [password], [status], [decentralizationId], [resetPasswordToken], [resetPasswordTokenExpiry], [createAt], [updateAt]) VALUES (26, N'student3@gmail.com', N'', N'$2a$12$tAfXNQA1BAFMDt97feonh.ZnDQ4nipJ27dt1bQcRZ3Dd0SPZsaqJq', N'Working', 2, N'', CAST(N'2024-04-23T13:22:54.4235982' AS DateTime2), CAST(N'2024-04-23T13:22:54.4236004' AS DateTime2), CAST(N'2024-04-23T13:22:54.4236005' AS DateTime2))
INSERT [dbo].[Accounts] ([accountID], [email], [avatar], [password], [status], [decentralizationId], [resetPasswordToken], [resetPasswordTokenExpiry], [createAt], [updateAt]) VALUES (27, N'student4@gmail.com', N'', N'$2a$12$Xm0ujtcmzhmGdzt53paQFOJObtE0cLjmwOxXSjSZt8I57DSyo0sue', N'Working', 2, N'', CAST(N'2024-04-23T13:23:16.2336454' AS DateTime2), CAST(N'2024-04-23T13:23:16.2336580' AS DateTime2), CAST(N'2024-04-23T13:23:16.2336581' AS DateTime2))
INSERT [dbo].[Accounts] ([accountID], [email], [avatar], [password], [status], [decentralizationId], [resetPasswordToken], [resetPasswordTokenExpiry], [createAt], [updateAt]) VALUES (28, N'student5@gmail.com', N'', N'$2a$12$t3kxa1P.WTABrKYjB.r0wub2l153gqCxLmgRPYJICgBRk3XCGdCha', N'Working', 2, N'', CAST(N'2024-04-23T13:23:33.9790897' AS DateTime2), CAST(N'2024-04-23T13:23:33.9790918' AS DateTime2), CAST(N'2024-04-23T13:23:33.9790919' AS DateTime2))
INSERT [dbo].[Accounts] ([accountID], [email], [avatar], [password], [status], [decentralizationId], [resetPasswordToken], [resetPasswordTokenExpiry], [createAt], [updateAt]) VALUES (29, N'accteststudent@gmail.com', N'', N'$2a$12$m0B/a7R4o2a.KOKeyqH5ROFze2sV1A974B2QVBjwlA5gb2EU7M/UO', N'Working', 2, N'', CAST(N'2024-04-24T16:43:15.0790602' AS DateTime2), CAST(N'2024-04-24T16:43:15.0791528' AS DateTime2), CAST(N'2024-04-24T16:43:15.0791798' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO
SET IDENTITY_INSERT [dbo].[CourseParts] ON 

INSERT [dbo].[CourseParts] ([coursePartID], [courseID], [partTitle], [amout], [duration], [createAt], [updateAt], [index]) VALUES (62, 31, N'Part 1', 0, 0, CAST(N'2024-04-23T14:12:29.1326237' AS DateTime2), CAST(N'2024-04-23T14:12:29.1326249' AS DateTime2), 1)
INSERT [dbo].[CourseParts] ([coursePartID], [courseID], [partTitle], [amout], [duration], [createAt], [updateAt], [index]) VALUES (63, 31, N'Part 2', 0, 0, CAST(N'2024-04-23T14:12:44.0822261' AS DateTime2), CAST(N'2024-04-23T14:12:44.0822270' AS DateTime2), 2)
INSERT [dbo].[CourseParts] ([coursePartID], [courseID], [partTitle], [amout], [duration], [createAt], [updateAt], [index]) VALUES (64, 33, N'Part 1', 0, 0, CAST(N'2024-04-23T14:15:12.8161394' AS DateTime2), CAST(N'2024-04-23T14:15:12.8161410' AS DateTime2), 1)
INSERT [dbo].[CourseParts] ([coursePartID], [courseID], [partTitle], [amout], [duration], [createAt], [updateAt], [index]) VALUES (65, 33, N'Part 2', 0, 0, CAST(N'2024-04-23T14:15:16.8376592' AS DateTime2), CAST(N'2024-04-23T14:15:16.8376600' AS DateTime2), 2)
SET IDENTITY_INSERT [dbo].[CourseParts] OFF
GO
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([courseID], [courseName], [courseDescription], [tutorID], [cost], [createAt], [updateAt]) VALUES (29, N'SQL', N'none', 9, 199999, CAST(N'2024-04-23T14:03:05.7597082' AS DateTime2), CAST(N'2024-04-23T14:03:05.7597665' AS DateTime2))
INSERT [dbo].[Courses] ([courseID], [courseName], [courseDescription], [tutorID], [cost], [createAt], [updateAt]) VALUES (31, N'HTML', N'none', 14, 199999, CAST(N'2024-04-23T14:12:03.9172322' AS DateTime2), CAST(N'2024-04-23T14:12:03.9172339' AS DateTime2))
INSERT [dbo].[Courses] ([courseID], [courseName], [courseDescription], [tutorID], [cost], [createAt], [updateAt]) VALUES (33, N'CSS', N'none', 14, 199999, CAST(N'2024-04-23T14:14:21.3554586' AS DateTime2), CAST(N'2024-04-23T14:14:21.3554602' AS DateTime2))
INSERT [dbo].[Courses] ([courseID], [courseName], [courseDescription], [tutorID], [cost], [createAt], [updateAt]) VALUES (35, N'Javascript', N'none', 14, 199999, CAST(N'2024-04-23T14:17:50.3272359' AS DateTime2), CAST(N'2024-04-23T14:17:50.3272369' AS DateTime2))
INSERT [dbo].[Courses] ([courseID], [courseName], [courseDescription], [tutorID], [cost], [createAt], [updateAt]) VALUES (37, N'NodeJs', N'none', 14, 199999, CAST(N'2024-04-23T14:18:25.6003438' AS DateTime2), CAST(N'2024-04-23T14:18:25.6003464' AS DateTime2))
INSERT [dbo].[Courses] ([courseID], [courseName], [courseDescription], [tutorID], [cost], [createAt], [updateAt]) VALUES (39, N'ReactJs', N'none', 14, 199999, CAST(N'2024-04-23T14:19:33.3376330' AS DateTime2), CAST(N'2024-04-23T14:19:33.3376425' AS DateTime2))
INSERT [dbo].[Courses] ([courseID], [courseName], [courseDescription], [tutorID], [cost], [createAt], [updateAt]) VALUES (41, N'Tailwind', N'none', 14, 199999, CAST(N'2024-04-23T14:20:28.1177949' AS DateTime2), CAST(N'2024-04-23T14:20:28.1177973' AS DateTime2))
INSERT [dbo].[Courses] ([courseID], [courseName], [courseDescription], [tutorID], [cost], [createAt], [updateAt]) VALUES (43, N'NotSale', N'none', 14, 10000000, CAST(N'2024-04-23T14:21:15.7069284' AS DateTime2), CAST(N'2024-04-23T14:21:15.7069306' AS DateTime2))
INSERT [dbo].[Courses] ([courseID], [courseName], [courseDescription], [tutorID], [cost], [createAt], [updateAt]) VALUES (45, N'NotTutor', N'none', 14, 99999, CAST(N'2024-04-23T14:22:05.9330968' AS DateTime2), CAST(N'2024-04-23T14:22:05.9330999' AS DateTime2))
INSERT [dbo].[Courses] ([courseID], [courseName], [courseDescription], [tutorID], [cost], [createAt], [updateAt]) VALUES (47, N'RestfulAPI', N'none', 14, 199999, CAST(N'2024-04-23T14:23:17.7951399' AS DateTime2), CAST(N'2024-04-23T14:23:17.7951414' AS DateTime2))
INSERT [dbo].[Courses] ([courseID], [courseName], [courseDescription], [tutorID], [cost], [createAt], [updateAt]) VALUES (49, N'test1', N'none', 14, 199999, CAST(N'2024-04-24T16:47:47.1537555' AS DateTime2), CAST(N'2024-04-24T16:47:47.1539802' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Courses] OFF
GO
SET IDENTITY_INSERT [dbo].[Decentralizations] ON 

INSERT [dbo].[Decentralizations] ([decentralizationID], [authorityName], [createAt], [updateAt]) VALUES (1, N'Admin', CAST(N'2023-12-04T21:29:51.0000000' AS DateTime2), CAST(N'2023-12-04T21:29:53.0000000' AS DateTime2))
INSERT [dbo].[Decentralizations] ([decentralizationID], [authorityName], [createAt], [updateAt]) VALUES (2, N'Student', CAST(N'2023-12-04T21:29:59.0000000' AS DateTime2), CAST(N'2023-12-04T21:30:01.0000000' AS DateTime2))
INSERT [dbo].[Decentralizations] ([decentralizationID], [authorityName], [createAt], [updateAt]) VALUES (3, N'Tutor', CAST(N'2023-12-04T21:30:06.0000000' AS DateTime2), CAST(N'2023-12-04T21:30:08.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Decentralizations] OFF
GO
SET IDENTITY_INSERT [dbo].[Enrollments] ON 

INSERT [dbo].[Enrollments] ([enrollmentID], [studentID], [courseID], [tutorID], [enrollmentDate], [statusTypeID], [createAt], [updateAt]) VALUES (87, 19, 24, 4, CAST(N'2023-12-06T16:14:01.0470000' AS DateTime2), 1, CAST(N'2024-04-23T13:45:26.3309815' AS DateTime2), CAST(N'2024-04-23T13:45:26.3309833' AS DateTime2))
INSERT [dbo].[Enrollments] ([enrollmentID], [studentID], [courseID], [tutorID], [enrollmentDate], [statusTypeID], [createAt], [updateAt]) VALUES (90, 19, 28, 4, CAST(N'2023-12-06T16:14:01.0470000' AS DateTime2), 1, CAST(N'2024-04-23T13:47:02.1354105' AS DateTime2), CAST(N'2024-04-23T13:47:02.1354123' AS DateTime2))
INSERT [dbo].[Enrollments] ([enrollmentID], [studentID], [courseID], [tutorID], [enrollmentDate], [statusTypeID], [createAt], [updateAt]) VALUES (91, 19, 25, 1, CAST(N'2023-12-06T16:14:01.0470000' AS DateTime2), 1, CAST(N'2024-04-23T13:47:07.3675687' AS DateTime2), CAST(N'2024-04-23T13:47:07.3675695' AS DateTime2))
INSERT [dbo].[Enrollments] ([enrollmentID], [studentID], [courseID], [tutorID], [enrollmentDate], [statusTypeID], [createAt], [updateAt]) VALUES (93, 19, 29, 13, CAST(N'2023-12-06T16:14:01.0470000' AS DateTime2), 1, CAST(N'2024-04-24T14:10:25.0881107' AS DateTime2), CAST(N'2024-04-24T14:10:25.0881904' AS DateTime2))
INSERT [dbo].[Enrollments] ([enrollmentID], [studentID], [courseID], [tutorID], [enrollmentDate], [statusTypeID], [createAt], [updateAt]) VALUES (94, 19, 31, 9, CAST(N'2023-12-06T16:14:01.0470000' AS DateTime2), 1, CAST(N'2024-04-24T17:06:15.0609696' AS DateTime2), CAST(N'2024-04-24T17:06:15.0610034' AS DateTime2))
INSERT [dbo].[Enrollments] ([enrollmentID], [studentID], [courseID], [tutorID], [enrollmentDate], [statusTypeID], [createAt], [updateAt]) VALUES (95, 20, 43, 13, CAST(N'2023-12-06T16:14:01.0470000' AS DateTime2), 1, CAST(N'2024-05-15T09:58:31.8965179' AS DateTime2), CAST(N'2024-05-15T09:58:31.8965397' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Enrollments] OFF
GO
SET IDENTITY_INSERT [dbo].[ExamTypes] ON 

INSERT [dbo].[ExamTypes] ([examTypeID], [examTypeName], [createAt], [updateAt]) VALUES (1, N'Test', CAST(N'2023-12-07T15:57:48.6424596' AS DateTime2), CAST(N'2023-12-07T15:57:48.6426025' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ExamTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Fees] ON 

INSERT [dbo].[Fees] ([feeID], [studentID], [courseID], [cost], [status], [createAt], [updateAt], [isChecked]) VALUES (85, 19, 24, 20000, N'Done', CAST(N'2024-04-23T13:45:26.3628543' AS DateTime2), CAST(N'2024-04-23T13:45:26.3628558' AS DateTime2), 0)
INSERT [dbo].[Fees] ([feeID], [studentID], [courseID], [cost], [status], [createAt], [updateAt], [isChecked]) VALUES (88, 19, 28, 100000, N'Done', CAST(N'2024-04-23T13:47:02.1544641' AS DateTime2), CAST(N'2024-04-23T13:47:02.1544654' AS DateTime2), 0)
INSERT [dbo].[Fees] ([feeID], [studentID], [courseID], [cost], [status], [createAt], [updateAt], [isChecked]) VALUES (89, 19, 25, 10000, N'Done', CAST(N'2024-04-23T13:47:07.3702166' AS DateTime2), CAST(N'2024-04-23T13:47:07.3702175' AS DateTime2), 0)
INSERT [dbo].[Fees] ([feeID], [studentID], [courseID], [cost], [status], [createAt], [updateAt], [isChecked]) VALUES (91, 19, 29, 199999, N'Done', CAST(N'2024-04-24T14:10:25.2676854' AS DateTime2), CAST(N'2024-04-24T14:10:25.2678094' AS DateTime2), 0)
INSERT [dbo].[Fees] ([feeID], [studentID], [courseID], [cost], [status], [createAt], [updateAt], [isChecked]) VALUES (92, 19, 31, 199999, N'Done', CAST(N'2024-04-24T17:06:15.1526163' AS DateTime2), CAST(N'2024-04-24T17:06:15.1527146' AS DateTime2), 0)
INSERT [dbo].[Fees] ([feeID], [studentID], [courseID], [cost], [status], [createAt], [updateAt], [isChecked]) VALUES (93, 20, 43, 10000000, N'Not Yet', CAST(N'2024-05-15T09:58:31.9326688' AS DateTime2), CAST(N'2024-05-15T09:58:31.9326949' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[Fees] OFF
GO
SET IDENTITY_INSERT [dbo].[Lectures] ON 

INSERT [dbo].[Lectures] ([lectureID], [coursePartID], [lectureTitle], [lectureLink], [duration], [isWatched], [isWatching], [isAvailable], [createAt], [updateAt], [index]) VALUES (42, 62, N'Lecture 1', N'https://www.youtube.com/embed/AqIkkAJl8gE?si=1gmJ7SpiLId3MPRX', 15, 0, 0, 0, CAST(N'2024-04-23T14:13:01.3197128' AS DateTime2), CAST(N'2024-04-23T14:13:01.3197138' AS DateTime2), 2)
INSERT [dbo].[Lectures] ([lectureID], [coursePartID], [lectureTitle], [lectureLink], [duration], [isWatched], [isWatching], [isAvailable], [createAt], [updateAt], [index]) VALUES (43, 62, N'Lecture 2', N'https://www.youtube.com/embed/AqIkkAJl8gE?si=1gmJ7SpiLId3MPRX', 15, 0, 0, 0, CAST(N'2024-04-23T14:13:08.0731086' AS DateTime2), CAST(N'2024-04-23T14:13:08.0731093' AS DateTime2), 2)
INSERT [dbo].[Lectures] ([lectureID], [coursePartID], [lectureTitle], [lectureLink], [duration], [isWatched], [isWatching], [isAvailable], [createAt], [updateAt], [index]) VALUES (44, 62, N'Lecture 3', N'https://www.youtube.com/embed/AqIkkAJl8gE?si=1gmJ7SpiLId3MPRX', 15, 0, 0, 0, CAST(N'2024-04-23T14:13:11.6994165' AS DateTime2), CAST(N'2024-04-23T14:13:11.6994174' AS DateTime2), 2)
INSERT [dbo].[Lectures] ([lectureID], [coursePartID], [lectureTitle], [lectureLink], [duration], [isWatched], [isWatching], [isAvailable], [createAt], [updateAt], [index]) VALUES (45, 63, N'Lecture 1', N'https://www.youtube.com/embed/AqIkkAJl8gE?si=1gmJ7SpiLId3MPRX', 15, 0, 0, 0, CAST(N'2024-04-23T14:13:18.0669886' AS DateTime2), CAST(N'2024-04-23T14:13:18.0669894' AS DateTime2), 2)
INSERT [dbo].[Lectures] ([lectureID], [coursePartID], [lectureTitle], [lectureLink], [duration], [isWatched], [isWatching], [isAvailable], [createAt], [updateAt], [index]) VALUES (46, 63, N'Lecture 2', N'https://www.youtube.com/embed/AqIkkAJl8gE?si=1gmJ7SpiLId3MPRX', 15, 0, 0, 0, CAST(N'2024-04-23T14:13:22.1701829' AS DateTime2), CAST(N'2024-04-23T14:13:22.1701836' AS DateTime2), 2)
INSERT [dbo].[Lectures] ([lectureID], [coursePartID], [lectureTitle], [lectureLink], [duration], [isWatched], [isWatching], [isAvailable], [createAt], [updateAt], [index]) VALUES (47, 63, N'Lecture 3', N'https://www.youtube.com/embed/AqIkkAJl8gE?si=1gmJ7SpiLId3MPRX', 15, 0, 0, 0, CAST(N'2024-04-23T14:13:25.5720961' AS DateTime2), CAST(N'2024-04-23T14:13:25.5720971' AS DateTime2), 2)
INSERT [dbo].[Lectures] ([lectureID], [coursePartID], [lectureTitle], [lectureLink], [duration], [isWatched], [isWatching], [isAvailable], [createAt], [updateAt], [index]) VALUES (48, 64, N'Lecture 1', N'https://www.youtube.com/embed/AqIkkAJl8gE?si=1gmJ7SpiLId3MPRX', 15, 0, 0, 0, CAST(N'2024-04-23T14:15:26.3475477' AS DateTime2), CAST(N'2024-04-23T14:15:26.3475487' AS DateTime2), 2)
INSERT [dbo].[Lectures] ([lectureID], [coursePartID], [lectureTitle], [lectureLink], [duration], [isWatched], [isWatching], [isAvailable], [createAt], [updateAt], [index]) VALUES (51, 65, N'Lecture 2', N'https://www.youtube.com/embed/AqIkkAJl8gE?si=1gmJ7SpiLId3MPRX', 15, 0, 0, 0, CAST(N'2024-04-23T14:15:39.2535424' AS DateTime2), CAST(N'2024-04-23T14:15:39.2535435' AS DateTime2), 2)
INSERT [dbo].[Lectures] ([lectureID], [coursePartID], [lectureTitle], [lectureLink], [duration], [isWatched], [isWatching], [isAvailable], [createAt], [updateAt], [index]) VALUES (56, 64, N'Lecture 2', N'https://www.youtube.com/embed/AqIkkAJl8gE?si=1gmJ7SpiLId3MPRX', 15, 0, 0, 0, CAST(N'2024-04-23T14:16:23.9662711' AS DateTime2), CAST(N'2024-04-23T14:16:23.9662723' AS DateTime2), 4)
INSERT [dbo].[Lectures] ([lectureID], [coursePartID], [lectureTitle], [lectureLink], [duration], [isWatched], [isWatching], [isAvailable], [createAt], [updateAt], [index]) VALUES (57, 64, N'Lecture 3', N'https://www.youtube.com/embed/AqIkkAJl8gE?si=1gmJ7SpiLId3MPRX', 15, 0, 0, 0, CAST(N'2024-04-23T14:17:06.5217375' AS DateTime2), CAST(N'2024-04-23T14:17:06.5217395' AS DateTime2), 5)
SET IDENTITY_INSERT [dbo].[Lectures] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentHistorys] ON 

INSERT [dbo].[PaymentHistorys] ([paymentHistoryID], [studentID], [paymentTypeID], [paymentName], [amount], [createAt], [updateAt]) VALUES (55, 19, 1, N'Add 1000000 to student account.', 1000000, CAST(N'2024-04-23T13:44:23.1753050' AS DateTime2), CAST(N'2024-04-23T13:44:23.1760135' AS DateTime2))
INSERT [dbo].[PaymentHistorys] ([paymentHistoryID], [studentID], [paymentTypeID], [paymentName], [amount], [createAt], [updateAt]) VALUES (56, 19, 2, N'Pay for course 24.', 20000, CAST(N'2024-04-23T13:46:44.0451053' AS DateTime2), CAST(N'2024-04-23T13:46:44.0451149' AS DateTime2))
INSERT [dbo].[PaymentHistorys] ([paymentHistoryID], [studentID], [paymentTypeID], [paymentName], [amount], [createAt], [updateAt]) VALUES (57, 19, 2, N'Pay for course 25.', 10000, CAST(N'2024-04-23T13:47:18.1180087' AS DateTime2), CAST(N'2024-04-23T13:47:18.1180093' AS DateTime2))
INSERT [dbo].[PaymentHistorys] ([paymentHistoryID], [studentID], [paymentTypeID], [paymentName], [amount], [createAt], [updateAt]) VALUES (58, 19, 2, N'Pay for course 28.', 100000, CAST(N'2024-04-23T13:47:18.1176402' AS DateTime2), CAST(N'2024-04-23T13:47:18.1176413' AS DateTime2))
INSERT [dbo].[PaymentHistorys] ([paymentHistoryID], [studentID], [paymentTypeID], [paymentName], [amount], [createAt], [updateAt]) VALUES (59, 19, 1, N'Add 30000 to student account.', 30000, CAST(N'2024-04-24T14:16:43.2249724' AS DateTime2), CAST(N'2024-04-24T14:16:43.2263262' AS DateTime2))
INSERT [dbo].[PaymentHistorys] ([paymentHistoryID], [studentID], [paymentTypeID], [paymentName], [amount], [createAt], [updateAt]) VALUES (60, 19, 2, N'Pay for course 31.', 199999, CAST(N'2024-05-05T16:01:25.7418373' AS DateTime2), CAST(N'2024-05-05T16:01:25.7425904' AS DateTime2))
INSERT [dbo].[PaymentHistorys] ([paymentHistoryID], [studentID], [paymentTypeID], [paymentName], [amount], [createAt], [updateAt]) VALUES (61, 19, 2, N'Pay for course 29.', 199999, CAST(N'2024-05-05T16:01:25.7418777' AS DateTime2), CAST(N'2024-05-05T16:01:25.7425658' AS DateTime2))
INSERT [dbo].[PaymentHistorys] ([paymentHistoryID], [studentID], [paymentTypeID], [paymentName], [amount], [createAt], [updateAt]) VALUES (62, 19, 1, N'Add 99 to student account.', 99, CAST(N'2024-05-08T22:17:49.8340122' AS DateTime2), CAST(N'2024-05-08T22:17:49.8344211' AS DateTime2))
SET IDENTITY_INSERT [dbo].[PaymentHistorys] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentTypes] ON 

INSERT [dbo].[PaymentTypes] ([paymentTypeID], [paymentTypeName], [creatAt], [updatedAt]) VALUES (1, N'in', CAST(N'2023-12-06T21:13:42.6575332' AS DateTime2), CAST(N'2023-12-06T21:13:42.6575600' AS DateTime2))
INSERT [dbo].[PaymentTypes] ([paymentTypeID], [paymentTypeName], [creatAt], [updatedAt]) VALUES (2, N'out', CAST(N'2023-12-06T21:13:47.3864922' AS DateTime2), CAST(N'2023-12-06T21:13:47.3864937' AS DateTime2))
SET IDENTITY_INSERT [dbo].[PaymentTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[StatusTypes] ON 

INSERT [dbo].[StatusTypes] ([statusTypeID], [statusName], [createAt], [updateAt]) VALUES (1, N'InProgress', CAST(N'2023-12-05T16:56:23.3195046' AS DateTime2), CAST(N'2023-12-05T16:56:23.3195486' AS DateTime2))
INSERT [dbo].[StatusTypes] ([statusTypeID], [statusName], [createAt], [updateAt]) VALUES (2, N'Reserve', CAST(N'2023-12-06T16:13:21.8180208' AS DateTime2), CAST(N'2023-12-06T16:13:21.8180680' AS DateTime2))
INSERT [dbo].[StatusTypes] ([statusTypeID], [statusName], [createAt], [updateAt]) VALUES (3, N'Stopped', CAST(N'2023-12-06T16:13:40.1174646' AS DateTime2), CAST(N'2023-12-06T16:13:40.1174659' AS DateTime2))
INSERT [dbo].[StatusTypes] ([statusTypeID], [statusName], [createAt], [updateAt]) VALUES (4, N'Finished', CAST(N'2023-12-06T16:13:44.5159742' AS DateTime2), CAST(N'2023-12-06T16:13:44.5159752' AS DateTime2))
INSERT [dbo].[StatusTypes] ([statusTypeID], [statusName], [createAt], [updateAt]) VALUES (5, N'Failed', CAST(N'2023-12-06T16:13:48.5132246' AS DateTime2), CAST(N'2023-12-06T16:13:48.5132263' AS DateTime2))
SET IDENTITY_INSERT [dbo].[StatusTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([studentID], [accountID], [fullName], [contactNumber], [provinceID], [districtID], [communeID], [email], [totalMoney], [createAt], [updateAt]) VALUES (19, 12, N'Kieu Van Anh', N'0393593282', 0, 0, 0, N'pktatca8@gmail.com', 800100, CAST(N'2024-04-23T12:00:00.0000000' AS DateTime2), CAST(N'2024-04-23T12:00:00.0000000' AS DateTime2))
INSERT [dbo].[Students] ([studentID], [accountID], [fullName], [contactNumber], [provinceID], [districtID], [communeID], [email], [totalMoney], [createAt], [updateAt]) VALUES (20, 23, N'Kiều Văn Anh', N'0393593281', NULL, NULL, NULL, N'student@gmail.com', 0, CAST(N'2024-05-15T09:56:15.2719685' AS DateTime2), CAST(N'2024-05-15T09:56:15.2720202' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET IDENTITY_INSERT [dbo].[TutorAssignments] ON 

INSERT [dbo].[TutorAssignments] ([tutorAssignmentID], [tutorID], [courseID], [numberOfStudent], [assignmentDate], [createAt], [updateAt]) VALUES (21, 13, 29, 1, CAST(N'2024-04-23T07:07:12.0900000' AS DateTime2), CAST(N'2024-04-23T14:07:12.1488387' AS DateTime2), CAST(N'2024-04-23T14:07:12.1489189' AS DateTime2))
INSERT [dbo].[TutorAssignments] ([tutorAssignmentID], [tutorID], [courseID], [numberOfStudent], [assignmentDate], [createAt], [updateAt]) VALUES (22, 9, 30, 0, CAST(N'2024-04-23T07:07:21.2510000' AS DateTime2), CAST(N'2024-04-23T14:07:21.2983420' AS DateTime2), CAST(N'2024-04-23T14:07:21.2983435' AS DateTime2))
INSERT [dbo].[TutorAssignments] ([tutorAssignmentID], [tutorID], [courseID], [numberOfStudent], [assignmentDate], [createAt], [updateAt]) VALUES (23, 14, 29, 0, CAST(N'2024-04-23T07:09:36.2010000' AS DateTime2), CAST(N'2024-04-23T14:09:36.2208239' AS DateTime2), CAST(N'2024-04-23T14:09:36.2208254' AS DateTime2))
INSERT [dbo].[TutorAssignments] ([tutorAssignmentID], [tutorID], [courseID], [numberOfStudent], [assignmentDate], [createAt], [updateAt]) VALUES (24, 10, 29, 0, CAST(N'2024-04-23T07:09:47.6100000' AS DateTime2), CAST(N'2024-04-23T14:09:47.6390863' AS DateTime2), CAST(N'2024-04-23T14:09:47.6390876' AS DateTime2))
INSERT [dbo].[TutorAssignments] ([tutorAssignmentID], [tutorID], [courseID], [numberOfStudent], [assignmentDate], [createAt], [updateAt]) VALUES (25, 11, 29, 0, CAST(N'2024-04-23T07:09:56.3380000' AS DateTime2), CAST(N'2024-04-23T14:09:56.3566890' AS DateTime2), CAST(N'2024-04-23T14:09:56.3566897' AS DateTime2))
INSERT [dbo].[TutorAssignments] ([tutorAssignmentID], [tutorID], [courseID], [numberOfStudent], [assignmentDate], [createAt], [updateAt]) VALUES (26, 9, 29, 0, CAST(N'2024-04-23T07:10:22.6670000' AS DateTime2), CAST(N'2024-04-23T14:10:22.6870282' AS DateTime2), CAST(N'2024-04-23T14:10:22.6870291' AS DateTime2))
INSERT [dbo].[TutorAssignments] ([tutorAssignmentID], [tutorID], [courseID], [numberOfStudent], [assignmentDate], [createAt], [updateAt]) VALUES (27, 9, 31, 1, CAST(N'2024-04-24T07:18:36.7580000' AS DateTime2), CAST(N'2024-04-24T14:18:36.8251881' AS DateTime2), CAST(N'2024-04-24T14:18:36.8252506' AS DateTime2))
INSERT [dbo].[TutorAssignments] ([tutorAssignmentID], [tutorID], [courseID], [numberOfStudent], [assignmentDate], [createAt], [updateAt]) VALUES (28, 9, 33, 0, CAST(N'2024-04-24T07:18:46.2850000' AS DateTime2), CAST(N'2024-04-24T14:18:46.3167702' AS DateTime2), CAST(N'2024-04-24T14:18:46.3167729' AS DateTime2))
INSERT [dbo].[TutorAssignments] ([tutorAssignmentID], [tutorID], [courseID], [numberOfStudent], [assignmentDate], [createAt], [updateAt]) VALUES (29, 10, 35, 0, CAST(N'2024-04-24T07:18:56.2950000' AS DateTime2), CAST(N'2024-04-24T14:18:56.3389113' AS DateTime2), CAST(N'2024-04-24T14:18:56.3389127' AS DateTime2))
INSERT [dbo].[TutorAssignments] ([tutorAssignmentID], [tutorID], [courseID], [numberOfStudent], [assignmentDate], [createAt], [updateAt]) VALUES (30, 10, 37, 0, CAST(N'2024-04-24T07:19:01.2850000' AS DateTime2), CAST(N'2024-04-24T14:19:01.3109011' AS DateTime2), CAST(N'2024-04-24T14:19:01.3109030' AS DateTime2))
INSERT [dbo].[TutorAssignments] ([tutorAssignmentID], [tutorID], [courseID], [numberOfStudent], [assignmentDate], [createAt], [updateAt]) VALUES (31, 11, 39, 0, CAST(N'2024-04-24T07:19:11.3340000' AS DateTime2), CAST(N'2024-04-24T14:19:11.4098984' AS DateTime2), CAST(N'2024-04-24T14:19:11.4099105' AS DateTime2))
INSERT [dbo].[TutorAssignments] ([tutorAssignmentID], [tutorID], [courseID], [numberOfStudent], [assignmentDate], [createAt], [updateAt]) VALUES (32, 11, 41, 0, CAST(N'2024-04-24T07:19:16.5810000' AS DateTime2), CAST(N'2024-04-24T14:19:16.6116175' AS DateTime2), CAST(N'2024-04-24T14:19:16.6116194' AS DateTime2))
INSERT [dbo].[TutorAssignments] ([tutorAssignmentID], [tutorID], [courseID], [numberOfStudent], [assignmentDate], [createAt], [updateAt]) VALUES (33, 13, 43, 1, CAST(N'2024-04-24T07:19:38.9800000' AS DateTime2), CAST(N'2024-04-24T14:19:39.0357694' AS DateTime2), CAST(N'2024-04-24T14:19:39.0357717' AS DateTime2))
INSERT [dbo].[TutorAssignments] ([tutorAssignmentID], [tutorID], [courseID], [numberOfStudent], [assignmentDate], [createAt], [updateAt]) VALUES (34, 13, 47, 0, CAST(N'2024-04-24T07:20:13.6570000' AS DateTime2), CAST(N'2024-04-24T14:20:13.7534442' AS DateTime2), CAST(N'2024-04-24T14:20:13.7534466' AS DateTime2))
SET IDENTITY_INSERT [dbo].[TutorAssignments] OFF
GO
SET IDENTITY_INSERT [dbo].[Tutors] ON 

INSERT [dbo].[Tutors] ([tutorID], [accountID], [fullName], [contactNumber], [provinceID], [districtID], [communeID], [email], [createAt], [updateAt]) VALUES (9, 20, N'Tro Giang', N'012345', NULL, NULL, NULL, N'tutor@gmail.com', CAST(N'2024-04-23T12:00:00.0000000' AS DateTime2), CAST(N'2024-04-23T12:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tutors] ([tutorID], [accountID], [fullName], [contactNumber], [provinceID], [districtID], [communeID], [email], [createAt], [updateAt]) VALUES (10, 21, N'Tro Giang 02', N'012345', NULL, NULL, NULL, N'tutor2@gmail.com', CAST(N'2024-04-23T12:00:00.0000000' AS DateTime2), CAST(N'2024-04-23T12:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tutors] ([tutorID], [accountID], [fullName], [contactNumber], [provinceID], [districtID], [communeID], [email], [createAt], [updateAt]) VALUES (11, 22, N'Tro Giang 03', N'12345', NULL, NULL, NULL, N'tutor3@gmail.com', CAST(N'2024-04-23T12:00:00.0000000' AS DateTime2), CAST(N'2024-04-23T12:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tutors] ([tutorID], [accountID], [fullName], [contactNumber], [provinceID], [districtID], [communeID], [email], [createAt], [updateAt]) VALUES (13, 5, N'Tro Giang 01', N'012345', NULL, NULL, NULL, N'tutor01@gmail.com', CAST(N'2024-04-23T12:00:00.0000000' AS DateTime2), CAST(N'2024-04-23T12:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tutors] ([tutorID], [accountID], [fullName], [contactNumber], [provinceID], [districtID], [communeID], [email], [createAt], [updateAt]) VALUES (14, 13, N'Tro Giang Test', N'012345', NULL, NULL, NULL, N'test1@gmail.com', CAST(N'2024-04-23T12:00:00.0000000' AS DateTime2), CAST(N'2024-04-23T12:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Tutors] OFF
GO
ALTER TABLE [dbo].[CourseParts] ADD  DEFAULT ((0)) FOR [index]
GO
ALTER TABLE [dbo].[Fees] ADD  DEFAULT (CONVERT([bit],(0))) FOR [isChecked]
GO
ALTER TABLE [dbo].[Lectures] ADD  DEFAULT ((0)) FOR [index]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_Decentralizations_decentralizationId] FOREIGN KEY([decentralizationId])
REFERENCES [dbo].[Decentralizations] ([decentralizationID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Decentralizations_decentralizationId]
GO
ALTER TABLE [dbo].[Answers]  WITH CHECK ADD  CONSTRAINT [FK_Answers_Questions_questionID] FOREIGN KEY([questionID])
REFERENCES [dbo].[Questions] ([questionID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Answers] CHECK CONSTRAINT [FK_Answers_Questions_questionID]
GO
ALTER TABLE [dbo].[CourseParts]  WITH CHECK ADD  CONSTRAINT [FK_CourseParts_Courses_courseID] FOREIGN KEY([courseID])
REFERENCES [dbo].[Courses] ([courseID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CourseParts] CHECK CONSTRAINT [FK_CourseParts_Courses_courseID]
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Tutors_tutorID] FOREIGN KEY([tutorID])
REFERENCES [dbo].[Tutors] ([tutorID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_Tutors_tutorID]
GO
ALTER TABLE [dbo].[Enrollments]  WITH CHECK ADD  CONSTRAINT [FK_Enrollments_StatusTypes_statusTypeID] FOREIGN KEY([statusTypeID])
REFERENCES [dbo].[StatusTypes] ([statusTypeID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Enrollments] CHECK CONSTRAINT [FK_Enrollments_StatusTypes_statusTypeID]
GO
ALTER TABLE [dbo].[Enrollments]  WITH CHECK ADD  CONSTRAINT [FK_Enrollments_Students_studentID] FOREIGN KEY([studentID])
REFERENCES [dbo].[Students] ([studentID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Enrollments] CHECK CONSTRAINT [FK_Enrollments_Students_studentID]
GO
ALTER TABLE [dbo].[Exams]  WITH CHECK ADD  CONSTRAINT [FK_Exams_CourseParts_coursePartID] FOREIGN KEY([coursePartID])
REFERENCES [dbo].[CourseParts] ([coursePartID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Exams] CHECK CONSTRAINT [FK_Exams_CourseParts_coursePartID]
GO
ALTER TABLE [dbo].[Exams]  WITH CHECK ADD  CONSTRAINT [FK_Exams_ExamTypes_examTypeID] FOREIGN KEY([examTypeID])
REFERENCES [dbo].[ExamTypes] ([examTypeID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Exams] CHECK CONSTRAINT [FK_Exams_ExamTypes_examTypeID]
GO
ALTER TABLE [dbo].[Fees]  WITH CHECK ADD  CONSTRAINT [FK_Fees_Students_studentID] FOREIGN KEY([studentID])
REFERENCES [dbo].[Students] ([studentID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Fees] CHECK CONSTRAINT [FK_Fees_Students_studentID]
GO
ALTER TABLE [dbo].[Lectures]  WITH CHECK ADD  CONSTRAINT [FK_Lectures_CourseParts_coursePartID] FOREIGN KEY([coursePartID])
REFERENCES [dbo].[CourseParts] ([coursePartID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Lectures] CHECK CONSTRAINT [FK_Lectures_CourseParts_coursePartID]
GO
ALTER TABLE [dbo].[PaymentHistorys]  WITH CHECK ADD  CONSTRAINT [FK_PaymentHistorys_PaymentTypes_paymentTypeID] FOREIGN KEY([paymentTypeID])
REFERENCES [dbo].[PaymentTypes] ([paymentTypeID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PaymentHistorys] CHECK CONSTRAINT [FK_PaymentHistorys_PaymentTypes_paymentTypeID]
GO
ALTER TABLE [dbo].[PaymentHistorys]  WITH CHECK ADD  CONSTRAINT [FK_PaymentHistorys_Students_studentID] FOREIGN KEY([studentID])
REFERENCES [dbo].[Students] ([studentID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PaymentHistorys] CHECK CONSTRAINT [FK_PaymentHistorys_Students_studentID]
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [FK_Questions_Exams_examID] FOREIGN KEY([examID])
REFERENCES [dbo].[Exams] ([examID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_Questions_Exams_examID]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Accounts_accountID] FOREIGN KEY([accountID])
REFERENCES [dbo].[Accounts] ([accountID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Accounts_accountID]
GO
ALTER TABLE [dbo].[Submissions]  WITH CHECK ADD  CONSTRAINT [FK_Submissions_Students_studentID] FOREIGN KEY([studentID])
REFERENCES [dbo].[Students] ([studentID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Submissions] CHECK CONSTRAINT [FK_Submissions_Students_studentID]
GO
ALTER TABLE [dbo].[TutorAssignments]  WITH CHECK ADD  CONSTRAINT [FK_TutorAssignments_Tutors_tutorID] FOREIGN KEY([tutorID])
REFERENCES [dbo].[Tutors] ([tutorID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TutorAssignments] CHECK CONSTRAINT [FK_TutorAssignments_Tutors_tutorID]
GO
ALTER TABLE [dbo].[Tutors]  WITH CHECK ADD  CONSTRAINT [FK_Tutors_Accounts_accountID] FOREIGN KEY([accountID])
REFERENCES [dbo].[Accounts] ([accountID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tutors] CHECK CONSTRAINT [FK_Tutors_Accounts_accountID]
GO
