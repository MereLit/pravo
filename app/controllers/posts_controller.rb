class PostsController < ApplicationController
  before_action :authenticate_user!, only:[:new,:create,:destroy,:edit,:update]
  before_action :set_post, only: [:show,:edit,:update,:destroy]

  def new
    if current_user.role.CreateArticle
      @post = Post.new
    else
      redirect_to not_permission_path
    end
  end 

  def show
    if current_user==nil || current_user.role.watch
      @comments = Postcomment.where(post_id: @post.id)
    else
      redirect_to not_permission_path
    end
  end

  def create
    params[:post][:user_id]=current_user.id
  	@post = Post.create(post_params)
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
    if current_user.role.EditArticle

    else
      redirect_to not_permission_path
    end
  end

  def update
  	@article.update(article_params)
  	redirect_to root_path
  end

  private
  	def post_params
  		params.require(:post).permit(:user_id,:title,:body)
	
  	end

  	def set_post
  		@post = Post.find(params[:id])
  	end
end
