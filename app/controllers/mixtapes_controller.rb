class MixtapesController < ApplicationController

  def new
    @mixtape = Mixtape.new

  end

  def create
    @mixtape = Mixtape.new(mixtape_params)


    params[:mixtape][:songs_attributes].each do |index, song_param|
      new_song = Song.new(song_param)
      @mixtape.mixtape_songs.build(:song => new_song)
    end

    if @mixtape.save
      redirect_to mixtape_path(@mixtape)
    else
      render :new
    end
  end

  def show
    @mixtape = Mixtape.find(params[:id])
  end

  private
    def mixtape_params
      params.require(:mixtape).permit(:name, :song_ids_to_add => [], :song_attributes => {})
    end

end
