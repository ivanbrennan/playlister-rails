class Mixtapes::SongsController < ApplicationController

  def new
    @mixtape = Mixtape.find(params[:mixtape_id])
    @song = @mixtape.songs.build
  end

  def create
    @mixtape = Mixtape.find(params[:mixtape_id])
    @song = @mixtape.songs.build(song_params)
    
    @mixtape.save

    redirect_to @mixtape
  end

end
