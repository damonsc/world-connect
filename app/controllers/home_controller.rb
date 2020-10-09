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

  is_admin?
  end

   def statuscheck
  end

  def adminnotes
   is_admin?
  end

  def profileinfo
  end

  def sslaclients
  is_admin?
  end

  def pcclients
  is_admin?
  end

  def donate
  end

  def poc
  end

  def admins
  is_admin?
  end

  def sessiontrack
  is_admin?
  end

  def execclients

  end

  def is_admin?
      # check if user is a admin
      # if not admin then redirect to where ever you want
      redirect_to root_path unless current_user.admin?
    end
end
