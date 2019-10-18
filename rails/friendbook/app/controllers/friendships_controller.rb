class FriendshipsController < ApplicationController

  def index
     @inverse_friendship = current_user.inverse_friendships.pending.map{|fr| fr.user}
  end

  def accept_request
    user = User.find(params[:id])
    friendship = current_user.inverse_friendships.find_by(user_id:user.id)
    friendship.update(status:0)
    flash[:notice] = "You added #{user.name} as a friend!!!"
    redirect_to pending_request_path
  end


  def delete_request
    @user = User.find(params[:id])
    friendship = current_user.inverse_friendships.pending.find_by(user_id:@user.id)
    friendship.destroy
    flash[:error] = "friend request deleted !!!!"
    redirect_to pending_request_path
  end


  def create
    friend = Friendship.new
    friend.user_id = current_user.id
    @friend_to_be_add = User.find(params[:id])
    friend.friend_id = @friend_to_be_add.id
    friend.save
    flash[:notice] = "You sent a friendRequest to #{@friend_to_be_add.name } !!"
    redirect_to users_path
  end

  def destroy
    friends = current_user.friend
    inverse_friends = current_user.inverse_friends
    @friend_to_be_unfriend = User.find(params[:id])
    if friends.map(&:id).include?(@friend_to_be_unfriend.id)
      friends.delete(@friend_to_be_unfriend.id)
    else
      inverse_friends.delete(@friend_to_be_unfriend.id)
    end
    flash[:error] = "you Removed #{@friend_to_be_unfriend.name} from your friend list!!!"
    redirect_to users_path
  end
end
