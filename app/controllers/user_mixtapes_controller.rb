class UserMixtapesController < ApplicationController
  def create
    user = User.find_by(:email => params[:email])
    mixtape = Mixtape.find(params[:id])
    UserMixtape.create(:user_id => user.id, :mixtape_id => mixtape.id)
    redirect_to mixtape_path(mixtape)
  end
end
