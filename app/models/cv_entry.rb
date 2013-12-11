class CvEntry < ActiveRecord::Base
  belongs_to :user
  has_many :tasks
  has_one :company
end
