USE proj;


SELECT * 
FROM dog_new
LIMIT 10;

/*15,155 records in dog_new table*/
SELECT COUNT(*) FROM dog_new;


/* 12,793 dogs in dog_new table*/
SELECT COUNT(DISTINCT animal_id)
FROM dog_new;


/*183 unique primary breeds*/
SELECT COUNT(DISTINCT prim_breed)
FROM dog_new;

/*4 primary breeds that are pit bulls that are classified as different breeds*/
SELECT DISTINCT prim_breed
FROM dog_new 
WHERE prim_breed LIKE '%pit%';

/*how many bully breeds are there? are there duplicates because they were just coded wrong?*/
SELECT DISTINCT prim_breed AS bullys
FROM dog_new
WHERE prim_breed LIKE '%bull%'
ORDER BY prim_breed;

/*how many prim_breeds include "&" and are thus not really prim_breeds?*/
SELECT DISTINCT prim_breed AS mutts
FROM dog_new
WHERE prim_breed LIKE '%&%'
ORDER BY prim_breed;

