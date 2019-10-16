module ApplicationCable
  class Connection < ActionCable::Connection::Base
  identified_by :current_admin, :true_user
    impersonates :user
	
	 def connect
      self.current_admin = find_verified_user
      reject_unauthorized_connection unless current_user
    end

    private

    def find_verified_user
      env["warden"].user # for Devise
    end
	
  end
end
