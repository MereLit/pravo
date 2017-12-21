class ArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_article, only: [:show,:edit,:update,:destroy]

  def new
  @article = Article.new
  end 

  def show
    @comments = Postcomment.where(article_id: @article.id)
  end

  def create
  	@article = current_user.articles.build(article_params)
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
