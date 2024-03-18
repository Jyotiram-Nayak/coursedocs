USE [EmployeeDB]
GO

/****** Object:  StoredProcedure [dbo].[Employee_DeleteById]    Script Date: 18-03-2024 01:11:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Jyotiram>
-- Create date: <Create Date,,18-03-2024>
-- Description:	<Description,,>
-- Employee_DeleteById 2
-- =============================================
CREATE PROCEDURE [dbo].[Employee_DeleteById]
@Id int
AS
BEGIN
	DELETE 
	FROM Employee 
	WHERE Id = @Id
END
GO


