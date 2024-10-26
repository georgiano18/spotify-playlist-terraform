variable "api_key" {
  type = string
}

data "spotify_search_track" "wizkid" {
  artist = "Wizkid"
}

resource "spotify_playlist" "ojuelegba" {
    name = "ojuelegba"
    tracks = [data.spotify_search_track.wizkid.tracks[0].id,
    data.spotify_search_track.wizkid.tracks[1].id,
    data.spotify_search_track.wizkid.tracks[2].id,
    data.spotify_search_track.wizkid.tracks[3].id]
  
}