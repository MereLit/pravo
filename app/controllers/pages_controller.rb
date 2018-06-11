class PagesController < ApplicationController
  def index
  @users = User.all	
  @posts = Post.all.order(created_at: :DESC)
  @events = Event.all.order(created_at: :DESC)
  @pets = Pet.all.order(created_at: :DESC)
  end
<<<<<<< HEAD

=======
 
>>>>>>> 0e85ce8e7b0a0ba37c4dc502d064aeba91c93b35
  def info
  	@users = User.all
  end
end