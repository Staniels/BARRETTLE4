﻿CREATE PROCEDURE [dbo].[spPosts_Detail]
    @id int
AS
begin
    set nocount on;

    SELECT [p].[Id], [p].[Title], [p].[Body], [p].[DateCreated], [u].[UserName], [u].[FirstName], [u].[LastName]
    FROM dbo.Post p
    INNER JOIN dbo.Users u
    ON p.UserId= u.Id
    WHERE p.Id = @id;

end