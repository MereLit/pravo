class PostcommentsController < ApplicationController
	before_action :authenticate_user!

	def create
		params[:postcomment][:article_id] = params[:article_id]
		params[:postcomment][:user_id] = current_user.id
		@comment = Postcomment.create(postcomments_params)
  if @comment.save
    redirect_to article_path(params[:article_id])
  else 
    @comment.errors.full_messages.each do |msg|
     @msg = msg
    end  
    flash[:notice] = "#{@msg}"
    redirect_to article_path(params[:article_id])
  end
end

def destroy
    @particle = Article.find(params[:article_id])
    @comment = @article.postcomments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@post)
  end
private

	def postcomments_params
		params.require(:postcomment).permit(:user_id, :article_id, :text)
	end

end
