class PostcommentsController < ApplicationController
	before_action :authenticate_user!

  def create
		params[:postcomment][:post_id] = params[:post_id]
		params[:postcomment][:user_id] = current_user.id
		@comment = Postcomment.create(postcomments_params)
    if @comment.save
    else 
      @comment.errors.full_messages.each do |msg|
        @msg = msg
      end  
      flash[:notice] = "#{@msg}"
    end
    redirect_to post_path(params[:post_id])
  end

  def destroy
    @comment = Postcomment.find(params[:id])
    @comment.destroy
    redirect_to article_path(params[:post_id])
  end

private

	def postcomments_params
		params.require(:postcomment).permit(:user_id, :post_id, :text)
	end

end
