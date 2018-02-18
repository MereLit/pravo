class ArticlesController < ApplicationController
  before_action :authenticate_user!, only:[:new,:create,:destroy,:edit,:update]
  before_action :set_article, only: [:show,:edit,:update,:destroy]

  def new
    if current_user.role.CreateArticle
      @article = Article.new
    else
      redirect_to not_permission_path
    end
  end 

  def show
    if current_user==nil || current_user.role.watch
      @comments = Postcomment.where(article_id: @article.id)
    else
      redirect_to not_permission_path
    end
  end

  def create
    params[:article][:user_id]=current_user.id
  	@article = Article.create(article_params)
  	if @article.save
  		redirect_to root_path
  	else
  		render 'new'
  	end

  end
  
  def destroy
  	@article.destroy
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
  	def article_params
  		params.require(:article).permit(:user_id,:title,:body)
	
  	end

  	def set_article
  		@article = Article.find(params[:id])
  	end
end
