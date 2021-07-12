class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :validatable,:timeoutable, :trackable and :omniauthable :registerable,:recoverable,:rememberable,
  devise :database_authenticatable, :trackable, :timeoutable, :lockable, :registerable ,:recoverable
  
  has_many :uploads
has_many :updates
 has_many :videos
end
