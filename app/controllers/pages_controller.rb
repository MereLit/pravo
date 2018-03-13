class PagesController < ApplicationController
  def index
  @users = User.all	
  @posts = Post.all.order(created_at: :DESC)
  end
end