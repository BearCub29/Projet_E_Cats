class User < ApplicationRecord
  after_create :welcome_send

  has_many :items
  belongs_to :cart
  

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
