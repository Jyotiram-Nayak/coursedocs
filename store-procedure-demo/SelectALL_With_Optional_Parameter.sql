USE [EmployeeDB]
GO

/****** Object:  StoredProcedure [dbo].[Employee_SelectAll]    Script Date: 18-03-2024 01:09:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Jyotiram>
-- Create date: <Create Date,,16-03-2024>
-- Description:	<Description,,Employee_SelectAll>
-- exec Employee_SelectAll 2
-- =============================================
CREATE PROCEDURE [dbo].[Employee_SelectAll]
@Id int = NULL
AS
BEGIN
	if(@Id IS NULL)
		BEGIN 
			SELECT * 
			FROM Employee
		END
	ELSE
		BEGIN
		SELECT * 
		FROM Employee 
		WHERE Id = @Id
	END
END
GO


