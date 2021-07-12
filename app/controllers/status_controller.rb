class StatusController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :destroy]
  
  def damon
  end
  
  def user_posts
 @user = User.find(params[:user_id])
 @posts = @user.posts

 #render plain: {posts: @posts.inspect, user: @user.inspect} 
end
  
end
