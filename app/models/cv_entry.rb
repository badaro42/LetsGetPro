class CvEntry < ActiveRecord::Base
  belongs_to :user
  has_many :tasks
  has_one :company

  validates :start_date, presence: true, if: :date_validation?

  def date_validation?
    if self[:end_date] < self[:start_date]
      errors[:end_date] << "End Date needs to be higher then Start Date"
      return false
    else
      return true
    end
  end

end
