# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

summer_hits = Mixtape.create(:name => "Summer Hits")

get_lucky = Song.create(:name => "Get Lucky", :artist_name => "Daft Punk")
we_cant_stop = Song.create(:name => "We Can't Stop", :artist_name => "Miley Cyrus")

# MixtapeSong.create(:song_id => get_lucky.id, :mixtape_id => summer_hits.id)
MixtapeSong.create(:song => get_lucky, :mixtape => summer_hits)
summer_hits.mixtape_songs.create(:song => we_cant_stop)