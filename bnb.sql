-- Creates a view of all listing availability dates where the listing is available, including listing ID, property type, host name, and date.
CREATE VIEW available AS
SELECT listings.id, listings.property_type, listings.host_name, availabilities.date FROM listings
JOIN availabilities ON availabilities.listing_id = listings.id
WHERE available = "TRUE";

-- Creates a view of the top 100 most reviewed listings, sorted by review count, property type, and host name.
CREATE VIEW frequently_reviewed AS
    SELECT listings.id, listings.property_type, listings.host_name, COUNT(reviews.id) AS reviews FROM reviews
    JOIN listings ON listings.id = reviews.listing_id
    GROUP BY listings.id
    ORDER BY reviews DESC, property_type, host_name
    LIMIT 100;

-- Creates a view showing each listing and how many days it was available in June 2023.
CREATE VIEW june_vacancies AS
    SELECT listings.id, listings.property_type, listings.host_name, COUNT(availabilities.id) AS days_vacant FROM listings
    JOIN availabilities ON listings.id = availabilities.listing_id
    WHERE availabilities.available = "TRUE" AND availabilities.date LIKE "%2023-06%"
    GROUP BY listings.id;

-- Creates a view of all listings that are missing a description.
CREATE VIEW "no_descriptions" AS
    SELECT id, property_type, host_name, accommodates, bedrooms FROM listings;

-- Creates a view of all listings with exactly one bedroom, including listing ID, property type, host name, and capacity.
CREATE VIEW one_bedrooms AS
    SELECT id, property_type, host_name, accommodates FROM listings
    WHERE bedrooms = 1;
