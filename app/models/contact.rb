class Contact < ActiveRecord::Base
  belongs_to :receiver, :class_name => 'User'
  belongs_to :sender, :class_name => 'User'



  def different_ids?
    :user_requesting_id != :target_user_id
  end

end
