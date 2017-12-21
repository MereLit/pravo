class PagesController < ApplicationController
  def index
  @users = User.all	
  @article = Article.all
  end
end