class HomeController < ApplicationController
  before_action :authenticate_user!

require 'devise_roles'
  def index
  end

  def documents
  end

  def videos
  end

  def clients
  end
  
   def statuscheck
  end
  
  def profileinfo
  end
  
  def sslaclients
  end
  
  def pcclients
  end
  
  def donate
  end
  
  def poc
  end
  
end
