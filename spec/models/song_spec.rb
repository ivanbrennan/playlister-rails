require 'spec_helper'

describe Song do
  context 'with artists' do
    describe '#artist_name=' do
      it 'creates a new artist and assign it by nme' do
        song = Song.new
        song.artist_name = "Michael Jackson"
        song.save

        expect(song.artist.name).to eq("Michael Jackson")
      end

      it 'assigns an existing aritst by name' do
        artist = Artist.create(:name => "Bob Dylan")

        song = Song.new
        song.artist = artist
        song.save

        expect(song.artist.name).to eq("Bob Dylan")
      end

    end
  end
end
