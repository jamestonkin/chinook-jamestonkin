SELECT COUNT (plt.TrackId) Total_Tracks_Per_Playlist, pl.Name
FROM PlaylistTrack plt, Playlist pl, Track t
WHERE plt.TrackId = t.TrackId
AND plt.PlaylistId = pl.PlaylistID
GROUP BY pl.Name
