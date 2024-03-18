USE [EmployeeDB]
GO

/****** Object:  StoredProcedure [dbo].[Employee_Update]    Script Date: 18-03-2024 01:12:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Jyotiram>
-- Create date: <Create Date,,16-3-2024>
-- Description:	<Description,,Employee_Update>
-- exec Employee_Update 1,Jyotiram,jyotiram@gmail.com,jyo123,male,23,55000
-- =============================================
CREATE PROCEDURE [dbo].[Employee_Update]
@Id int,
@Name nvarchar(50),
@Email nvarchar(50),
@Password nvarchar(50),
@Gender nvarchar(20),
@Age int,
@Salary int
AS
BEGIN
	UPDATE [dbo].[Employee] SET
		[Name]=@Name
		,[Email]=@Email
		,[Password]=@Password
		,[Gender]=@Gender
		,[Age]=@Age
		,[Salary]=@Salary
	WHERE Id = @Id
END
GO


