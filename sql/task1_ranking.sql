SELECT 
    id,
    scores,
    ROW_NUMBER() OVER (ORDER BY scores DESC) AS position
FROM examination
ORDER BY position;