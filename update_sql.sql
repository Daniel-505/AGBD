INSERT INTO artists(name)
VALUES ("rio romeo");
SELECT name from artists
ORDER by ArtistId DESC

INSERT INTO tracks(name,MediaTypeId,Milliseconds,UnitPrice,Composer)
VALUES ("Bet", 3,3483839, 1.99,"rio romeo"), ("Twice", 3,3344719, 1.99,"rio romeo"), ("Butch 4 Butch", 3,343719, 1.99,"rio romeo");
SELECT name,Composer FROM tracks
ORDER by name ASC