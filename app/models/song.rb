class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by(:name => artist_name)
  end

  def genre_names=(csv_genre_names)
    self.add_genre(Genre.find_or_create_by_csv_string(csv_genre_names))
#    genre_names = csv_genre_names.split(",").collect{|g| g.strip.downcase}
#    genre_names.each do |genre_name|
#      genre = Genre.find_or_create_by(:name => genre_name)
#      self.add_genre(genre)
#    end
  end

  def add_genre(genre)
    self.song_genres.build(:genre => genre)
  end
end
