CREATE TABLE spotify (
	position int, 
	track_name text,
	artist text,
	streams int,
	url text primary key, 
	date date,
	region text
		
);

CREATE TABLE spotify_song_details (
);

-- joining tables
SELECT spotify.position, spotify.track_name, spotify.artist, spotify.streams, spotify.url, spotify.date, spotify.region
FROM spotify
JOIN spotify_song_details
ON spotify.url = spotify_song_details.url;