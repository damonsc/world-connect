class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :validatable,:timeoutable, :trackable and :omniauthable :registerable,:recoverable,:rememberable,
  devise :database_authenticatable, :trackable, :timeoutable, :lockable, :registerable ,:recoverable
end
