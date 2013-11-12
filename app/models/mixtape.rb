class Mixtape < ActiveRecord::Base
  has_many :mixtape_songs
  has_many :songs, :through => :mixtape_songs

  accepts_nested_attributes_for :songs


  # def songs
  #   self.mixtape_songs.collect(&:song)
  # end

  def song_ids_to_add=(song_ids)
    song_ids.each do |song_id|
      self.mixtape_songs.build(:song_id => song_id)
    end
  end

end
