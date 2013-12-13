class Task < ActiveRecord::Base
  belongs_to :cv_entry

  validates :description, :presence => true, :length => {:minimum => 3}
  validates :position, :presence => true, :length => {:minimum => 3}

end
