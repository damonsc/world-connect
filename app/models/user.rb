class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
		 has_many :updates
		 has_many :uploads
		 has_many :videos
		 has_many :payments
		 has_many :session_logs
		 has_many :logs
         has_many :tasks
		 has_one :client_codes
		 has_one :connect_codes
end
