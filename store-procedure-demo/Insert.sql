USE [EmployeeDB]
GO

/****** Object:  StoredProcedure [dbo].[Employee_Insert]    Script Date: 18-03-2024 01:12:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Jyotiram>
-- Create date: <Create Date,,16-3-2024>
-- Description:	<Description,,Employee_Insert>
-- exec Employee_Insert
-- =============================================
CREATE PROCEDURE [dbo].[Employee_Insert]
@Name nvarchar(50),
@Email nvarchar(50),
@Password nvarchar(50),
@Gender nvarchar(20),
@Age int,
@Salary int
AS
BEGIN
	INSERT INTO [dbo].[Employee]
        ([Name]
        ,[Email]
        ,[Password]
        ,[Gender]
        ,[Age]
        ,[Salary])
    VALUES
		(@Name 
        ,@Email
        ,@Password
        ,@Gender
        ,@Age
        ,@Salary)
END
GO


