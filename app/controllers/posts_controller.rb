class PostsController < ApplicationController
  before_action :authenticate_user!, except:[:show, :index]
  before_action :set_post, except:[:new,:create,:index]

  def new
    if current_user.admin
      @post = Post.new
    else
      redirect_to not_permission_path
    end
  end 

  def index
    @posts = Post.all.order(created_at: :DESC)
  end

  def show
    @post.update(visit: @post.visit+1)
    pp @post
     @posts = Post.all.order(created_at: :DESC)
     pp @posts
      @comments = Postcomment.where(post_id: @post.id).order(created_at: :DESC)
      pp @comments
  end

  def create
  	@post = current_user.posts.build(post_params)
  	if @post.save
  		redirect_to root_path
  	else
  		render 'new'
  	end
  end
  
  def destroy
  	@post.destroy
  	redirect_to root_path
  end

  def edit
    if current_user.admin
    else
      redirect_to not_permission_path
    end
  end

  def update
  	@post.update(post_params)
  	redirect_to post_path
  end

  private
  	def post_params
  		params.require(:post).permit(:user_id,:title,:body,:image)
  	end

  	def set_post
  		@post = Post.find(params[:id])
  	end
end


