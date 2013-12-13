class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #attr_accessible :email, :password, :password_confirmation, :name, :gender, :about_me, :photo, :birth_date
  has_many :articles
  has_many :contacts
  has_many :cv_entries

  validates :name, :presence => true, :length => { :minimum => 3}
  validates :email, :presence => true, :uniqueness => true
  validates :birth_date, :presence => true
  validates :gender, :presence => true
  validates_format_of :photo, :presence => true, :with => %r{\.(png|jpg|jpeg|gif|bmp)$}i,
                      :message => "needs to be .jpg, .png, .jpeg, .gif, .bmp", :multiline => true

end
