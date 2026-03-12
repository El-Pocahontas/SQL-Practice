-- ============================================
-- 1. Basic SELECT queries
-- ============================================

-- Get all people
SELECT * FROM people;

-- Get all pets
SELECT * FROM pets;


-- ============================================
-- 2. Filtering data (WHERE)
-- ============================================

-- Find a person named Anna
SELECT * FROM people
WHERE name = 'Anna';

-- Find all cats
SELECT * FROM pets
WHERE pet_type = 'cat';


-- ============================================
-- 3. Sorting data (ORDER BY)
-- ============================================

-- Sort people alphabetically
SELECT * FROM people
ORDER BY name;


-- ============================================
-- 4. JOIN — one‑to‑many relationship
-- ============================================

-- List of people and their pets
SELECT
    people.name AS owner,
    pets.pet_name,
    pets.pet_type
FROM people
JOIN pets ON people.id = pets.person_id;


-- ============================================
-- 5. JOIN with filtering
-- ============================================

-- Owners of cats
SELECT
    people.name AS owner,
    pets.pet_name
FROM people
JOIN pets ON people.id = pets.person_id
WHERE pets.pet_type = 'cat';


-- ============================================
-- 6. LEFT JOIN — people without pets
-- ============================================

-- List of people who have no pets
SELECT people.name
FROM people
LEFT JOIN pets ON people.id = pets.person_id
WHERE pets.id IS NULL;


-- ============================================
-- 7. GROUP BY — data aggregation
-- ============================================

-- Number of pets per person
SELECT
    people.name AS owner,
    COUNT(pets.id) AS pets_count
FROM people
LEFT JOIN pets ON people.id = pets.person_id
GROUP BY people.id;


-- ============================================
-- 8. HAVING — filtering aggregated results
-- ============================================

-- People who have more than one pet
SELECT
    people.name,
    COUNT(pets.id) AS pets_count
FROM people
JOIN pets ON people.id = pets.person_id
GROUP BY people.id
HAVING COUNT(pets.id) > 1;


-- ============================================
-- 9. Additional analysis
-- ============================================

-- Number of pets by type
SELECT pet_type, COUNT(*)
FROM pets
GROUP BY pet_type;