class FriendshipsController < ApplicationController
  def update
    @friendship = Friendship.find(params[:id])
    @user = current_user
    if params[:accepted]
      @friendship.update_attribute("accepted", true)
    end
    if params[:ignored]
      @friendship.update_attribute("ignored", true)
    end
    respond_to do |format|
      format.html
      format.js
    end
  end
end
