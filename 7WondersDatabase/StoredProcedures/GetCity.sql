﻿CREATE PROCEDURE [dbo].[GetCity]
	@id BIGINT
AS
	SELECT * FROM Cities
	WHERE Id = @id
RETURN 0
