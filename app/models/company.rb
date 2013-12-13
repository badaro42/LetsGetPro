class Company < ActiveRecord::Base
  belongs_to :cv_entry

  validates_format_of :logotype, :presence => true, :with => %r{\.(png|jpg|jpeg|gif|bmp)$}i,
                      :message => "needs to be .jpg, .png, .jpeg, .gif, .bmp", :multiline => true
  validates :description, :presence => true
  validates :name, :presence => true, :length => { :minimum => 3}

end
