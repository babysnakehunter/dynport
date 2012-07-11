module ArtistsHelper
  def new_album_link message, artist= @artist
    link_to message, new_album_for_artist_path(artist.id)
  end
end
