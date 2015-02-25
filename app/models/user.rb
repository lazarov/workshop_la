class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #attr_accessor :firstname, :lastname


  validates_presence_of :firstname, :lastname

  has_many :reviews
  has_many :products

  # def admin?
  #   self.admin == true
  # end

  # before_create :record_signup
  #
  # def record_signup
  #   binding.pry
  # end

end
