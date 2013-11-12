class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
      # Never trust parameters from the scary internet, only allow the white list through.
    def song_params
      params.require(:song).permit(:name, :artist_name,:genre_names)
    end
end
