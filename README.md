### Pig (Put dataset on hdfs)
1. List the unique userid of female users whose age between 20-35 and who has rated the highest rated Action AND War movies. (You should consider all movies that has Action AND War both in its genre list) Print only users whose zip starts with 1.
2. Implement cogroup command on UserID for the datasets ratings_new and users_new. Print first 11 rows.
3. Repeat above (implement join) with cogroup commands. Print first 11 rows.
4. Using Pig Latin script, use the FORMAT_GENRE function on movies_new dataset and print the movie name with its genre(s). Write a UDF (User Define Function) FORMAT_GENRE in Pig which basically formats the genre in movies_new in the following
