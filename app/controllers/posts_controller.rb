class PostsController < ApplicationController
  before_action :authenticate_user!, except:[:show]
  before_action :set_post, except:[:new,:create]

  def new
    if current_user.role.CreatePosts
      @post = Post.new
    else
      redirect_to not_permission_path
    end
  end 

  def show
      @comments = Postcomment.where(post_id: @post.id)
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
    if current_user.role.EditPosts

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
  		params.require(:post).permit(:user_id,:title,:body,:image)
	
  	end

  	def set_post
  		@post = Post.find(params[:id])
  	end
end
