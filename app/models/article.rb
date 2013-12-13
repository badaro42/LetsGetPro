class Article < ActiveRecord::Base
  belongs_to :user

  has_attached_file :picture,
                    :path => "public/system/:class/:id/:filename",
                    :url => "/system/:class/:id/:basename.:extension"
end
