Users = load '/Spring2015/users_new.dat' using PigStorage('#') as (UserID:chararray, Gender:chararray, Age:int, Occupation:chararray, Zipcode:int);
Ratings = load '/Spring2015/ratings_new.dat' using PigStorage('#') as (UserID:chararray, MovieID:chararray, Rating:double, Timestamp:int);

UsersRatings = cogroup Users by (UserID), Ratings by (UserID);
flat = foreach UsersRatings generate flatten(Users), flatten(Ratings);
final = limit flat 11;
dump final;