SELECT *
FROM UFO_sightings.dbo.ufo_sighting_data;

SELECT Date_time, CONVERT(Date, Date_time)
FROM UFO_sightings.dbo.ufo_sighting_data;

ALTER TABLE ufo_sighting_data
ADD Sighting_Date Date;

UPDATE ufo_sighting_data
SET  Sighting_Date = CONVERT(Date, Date_time);

ALTER TABLE ufo_sighting_data
ADD Sighting_Time Time;

UPDATE ufo_sighting_data
SET  Sighting_Time = CONVERT(Time, Date_time);

SELECT *
FROM UFO_sightings.dbo.ufo_sighting_data;

SELECT state_province, country

ALTER TABLE ufo_sighting_data
DROP COLUMN Date_time;

ALTER TABLE ufo_sighting_data
DROP COLUMN "described_duration_of_encounter";

SELECT *
FROM UFO_sightings.dbo.ufo_sighting_data;


UPDATE ufo_sighting_data
SET country = 'ca'
WHERE "state_province" IN ('NL', 'PE', 'NS', 'NB', 'QC', 'ON', 'MB', 'SK', 'AB', 'BC', 'YT', 'NT', 'NU');

UPDATE ufo_sighting_data
SET country = 'us'
WHERE "state_province" IN ('AL', 'AK', 'AZ', 'AR', 'AS', 'CA', 'CO', 'CT', 'DE', 'DC', 'FL', 'GA', 'GU', 'HI', 'ID', 'IL', 'IN', 'IA', 'KS', 'KY', 'LA', 'ME', 'MD', 'MA', 'MI', 'MP', 'OH', 'OK', 'OR', 'PA', 'PR', 'RI', 'SC', 'SD', 'TN', 'TX', 'TT', 'UT', 'VT', 'VA', 'VI', 'WA', 'WV', 'WI', 'WY');

UPDATE ufo_sighting_data
SET country = 'us'
WHERE "state_province" IN ('mn', 'ms', 'mo', 'mt', 'ne', 'nv', 'nh', 'nj', 'nm', 'ny', 'nc', 'nd');

SELECT state_province, country
FROm UFO_sightings.dbo.ufo_sighting_data;

UPDATE ufo_sighting_data
SET country = 'other', state_province = 'other'
WHERE country IS NULL;

UPDATE ufo_sighting_data
SET state_province = 'other'
WHERE state_province IS NULL;

SELECT *
FROm UFO_sightings.dbo.ufo_sighting_data;

--ADD Column 'Zodiac_Season' to classify the season in which the sighting occured

ALTER TABLE UFO_sightings.dbo.ufo_sighting_data
ADD Zodiac_Season varchar(20);

--Use month and day values from datetime Sighting_Date column to classify which zodiac season each sighting occured in

UPDATE UFO_sightings.dbo.ufo_sighting_data
SET Zodiac_Season = 'Aries'
WHERE MONTH(Sighting_Date) = '03' AND DAY(Sighting_Date) BETWEEN '21' AND '31';

SELECT Sighting_Date, Zodiac_Season
FROM UFO_sightings.dbo.ufo_sighting_data
WHERE Zodiac_Season = 'Aries';

UPDATE UFO_sightings.dbo.ufo_sighting_data
SET Zodiac_Season = 'Aries'
WHERE MONTH(Sighting_Date) = '04' AND DAY(Sighting_Date) BETWEEN '1' AND '19';

UPDATE UFO_sightings.dbo.ufo_sighting_data
SET Zodiac_Season = 'Taurus'
WHERE MONTH(Sighting_Date) = '04' AND DAY(Sighting_Date) BETWEEN '20' AND '31';

UPDATE UFO_sightings.dbo.ufo_sighting_data
SET Zodiac_Season = 'Taurus'
WHERE MONTH(Sighting_Date) = '05' AND DAY(Sighting_Date) BETWEEN '1' AND '20';

UPDATE UFO_sightings.dbo.ufo_sighting_data
SET Zodiac_Season = 'Gemini'
WHERE MONTH(Sighting_Date) = '05' AND DAY(Sighting_Date) BETWEEN '21' AND '31';

UPDATE UFO_sightings.dbo.ufo_sighting_data
SET Zodiac_Season = 'Gemini'
WHERE MONTH(Sighting_Date) = '06' AND DAY(Sighting_Date) BETWEEN '1' AND '21';

UPDATE UFO_sightings.dbo.ufo_sighting_data
SET Zodiac_Season = 'Cancer'
WHERE MONTH(Sighting_Date) = '06' AND DAY(Sighting_Date) BETWEEN '22' AND '31';

UPDATE UFO_sightings.dbo.ufo_sighting_data
SET Zodiac_Season = 'Cancer'
WHERE MONTH(Sighting_Date) = '07' AND DAY(Sighting_Date) BETWEEN '1' AND '22';

UPDATE UFO_sightings.dbo.ufo_sighting_data
SET Zodiac_Season = 'Leo'
WHERE MONTH(Sighting_Date) = '07' AND DAY(Sighting_Date) BETWEEN '23' AND '31';

UPDATE UFO_sightings.dbo.ufo_sighting_data
SET Zodiac_Season = 'Leo'
WHERE MONTH(Sighting_Date) = '08' AND DAY(Sighting_Date) BETWEEN '1' AND '22';

UPDATE UFO_sightings.dbo.ufo_sighting_data
SET Zodiac_Season = 'Virgo'
WHERE MONTH(Sighting_Date) = '08' AND DAY(Sighting_Date) BETWEEN '23' AND '31';

UPDATE UFO_sightings.dbo.ufo_sighting_data
SET Zodiac_Season = 'Virgo'
WHERE MONTH(Sighting_Date) = '09' AND DAY(Sighting_Date) BETWEEN '1' AND '22';

UPDATE UFO_sightings.dbo.ufo_sighting_data
SET Zodiac_Season = 'Libra'
WHERE MONTH(Sighting_Date) = '09' AND DAY(Sighting_Date) BETWEEN '23' AND '31';

UPDATE UFO_sightings.dbo.ufo_sighting_data
SET Zodiac_Season = 'Libra'
WHERE MONTH(Sighting_Date) = '10' AND DAY(Sighting_Date) BETWEEN '1' AND '23';

UPDATE UFO_sightings.dbo.ufo_sighting_data
SET Zodiac_Season = 'Scorpio'
WHERE MONTH(Sighting_Date) = '10' AND DAY(Sighting_Date) BETWEEN '24' AND '31';

UPDATE UFO_sightings.dbo.ufo_sighting_data
SET Zodiac_Season = 'Scorpio'
WHERE MONTH(Sighting_Date) = '11' AND DAY(Sighting_Date) BETWEEN '1' AND '21';

UPDATE UFO_sightings.dbo.ufo_sighting_data
SET Zodiac_Season = 'Sagittarius'
WHERE MONTH(Sighting_Date) = '11' AND DAY(Sighting_Date) BETWEEN '22' AND '31';

UPDATE UFO_sightings.dbo.ufo_sighting_data
SET Zodiac_Season = 'Sagittarius'
WHERE MONTH(Sighting_Date) = '12' AND DAY(Sighting_Date) BETWEEN '1' AND '21';

UPDATE UFO_sightings.dbo.ufo_sighting_data
SET Zodiac_Season = 'Capricorn'
WHERE MONTH(Sighting_Date) = '12' AND DAY(Sighting_Date) BETWEEN '22' AND '31';

UPDATE UFO_sightings.dbo.ufo_sighting_data
SET Zodiac_Season = 'Capricorn'
WHERE MONTH(Sighting_Date) = '01' AND DAY(Sighting_Date) BETWEEN '1' AND '19';

UPDATE UFO_sightings.dbo.ufo_sighting_data
SET Zodiac_Season = 'Aquarius'
WHERE MONTH(Sighting_Date) = '01' AND DAY(Sighting_Date) BETWEEN '20' AND '31';

UPDATE UFO_sightings.dbo.ufo_sighting_data
SET Zodiac_Season = 'Aquarius'
WHERE MONTH(Sighting_Date) = '02' AND DAY(Sighting_Date) BETWEEN '1' AND '18';

UPDATE UFO_sightings.dbo.ufo_sighting_data
SET Zodiac_Season = 'Pisces'
WHERE MONTH(Sighting_Date) = '02' AND DAY(Sighting_Date) BETWEEN '19' AND '31';

UPDATE UFO_sightings.dbo.ufo_sighting_data
SET Zodiac_Season = 'Pisces'
WHERE MONTH(Sighting_Date) = '03' AND DAY(Sighting_Date) BETWEEN '1' AND '20';

SELECT Sighting_Date, Zodiac_Season
FROM UFO_Sightings.dbo.ufo_sighting_data;

--Delete rows where no there's no date data

SELECT Sighting_Date, Zodiac_Season
FROM UFO_Sightings.dbo.ufo_sighting_data
WHERE Zodiac_Season IS NULL;

DELETE FROM UFO_Sightings.dbo.ufo_sighting_data
WHERE Sighting_Date IS NULL;

SELECT *
FROM UFO_Sightings.dbo.ufo_sighting_data;

