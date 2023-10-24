USE [Northwind]
GO
/****** Object:  StoredProcedure [dbo].[GiveEmployeeRaise]    Script Date: 10/6/2022 9:20:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER procedure [dbo].[GiveEmployeeRaise]
@EmployeeID INT, @RaisePercentage Decimal
AS 
UPDATE Employees
Set Salary= Salary * (1 + @RaisePercentage/100)
Where EmployeeID= @EmployeeID;





