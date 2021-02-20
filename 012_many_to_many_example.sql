SELECT *
FROM "Playlist"

SELECT *
FROM "Track"

SELECT *
FROM "PlaylistTrack"

-- Ako sa volá prvá skladba podľa abecedy z playlistov, ktorých názov  je tvorený aspoň 12 písmenami 
SELECT t."Name" 
FROM "PlaylistTrack" plt
JOIN "Playlist" pl 
	ON pl."PlaylistId"=plt."PlaylistId"
	AND LENGTH(pl."Name") > 12
JOIN "Track" t 
	ON t."TrackId"=plt."TrackId"
ORDER BY t."Name"


