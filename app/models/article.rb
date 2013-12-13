class Article < ActiveRecord::Base
  belongs_to :user

  validates :title, :presence => true
  validates_format_of :image, :presence => true, :with => %r{\.(png|jpg|jpeg|gif|bmp)$}i,
                      :message => "needs to be .jpg, .png, .jpeg, .gif, .bmp", :multiline => true
  validates :link, :presence => true
  validates :text, :presence => true

end
