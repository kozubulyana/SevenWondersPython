﻿CREATE PROCEDURE [dbo].[GetHotelsForCity]
	@cityId BIGINT
AS	
	SELECT Hotels.Id,
		Hotels.Name, 
		Hotels.Description,
		Ratings.Id as Rating,
		Countries.Name as Country,
		Cities.Name as City,
		Hotels.Adress as Address,
		FoodTypes.Name as FoodType,
		Hotels.FoodPrice
	FROM Hotels 
	JOIN Ratings On Ratings.Id = Hotels.RatingId
	JOIN Cities On Hotels.CityId = Cities.Id
	JOIN Countries On Cities.CountryId = Countries.Id
	JOIN FoodTypes On Hotels.FoodTypeId = FoodTypes.Id
	WHERE Hotels.CityId = @cityId AND Hotels.IsDeleted = 0
RETURN 0