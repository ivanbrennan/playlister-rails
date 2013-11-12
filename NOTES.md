1. Set your validations in your model

2. Account for Validation in the flow of your controllers

3. Make sure your template that you render when something is invalid says why. Basically account for validation in a view.


I want there to be mixtapes
Mixtapes should have songs
Songs should be able to be on multiple mixtapes.

I want to be able to add both existing and new songs to a mixtape when creating the mixtape

but I also want to be able to add songs to an existing mixtape (without actually editing the mixtape)

tables:
  mixtapes => has_many :mixtape_songs, :songs, through ms
    id          name
  mixtape_songs => belongs_to :mixtape, :song
    id          mixtape_id        song_id

  song.rb => has_many :mixtape_songs

  play with this a bit in console, add some seed data, move on

  '/mixtapes/new' => 'mixtape#new'
  Render form that will submit to '/mixtapes' => 'mixtapes#create'

  '/mixtapes/1/songs/new' => 'songs#new'

