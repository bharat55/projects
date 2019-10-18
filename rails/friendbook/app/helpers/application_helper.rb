module ApplicationHelper
  def current_user?(user)
    current_user == user
  end

  def button_for_action(user)
  if current_user

     friendship = Friendship.where("(user_id = :user_id AND friend_id = :friend_id) || (user_id = :friend_id AND friend_id = :user_id)", user_id: user.id, friend_id: current_user.id).first

     if friendship
       case friendship.status
       when 'pending'
          link_to "cancel request" ,remove_friend_path(user), :class => 'btn btn-default btn-xs btn-warning'
       when 'accept'
         link_to "UnFriend" ,remove_friend_path(user), :class => 'btn btn-default btn-xs btn-danger'
       end
     else
       button_to "Add Friend" ,add_friend_path(user), :class => 'btn btn-default btn-xs btn-primary'
     end
   end
 end









  # def already_friend?(user)
  #   current_user.friendships.accept.map(&:friend_id).include?(user.id)
  # end

  # def inverse_friends?(user)
  #   current_user.inverse_friendships.accept.map(&:user_id).include?(user.id)
  # end

  # def friend_pending?(user)
  #   current_user.friendships.pending.map(&:friend_id).include?(user.id)
  # end

  # def inverse_friend_pending?(user)
  #   current_user.inverse_friendships.pending.map(&:user_id).include?(user.id)
  # end
end
