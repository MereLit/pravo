class InfocentersController < ApplicationController
  before_action :authenticate_user!, except:[:show, :index]
  before_action :set_infocenter, except:[:new,:create,:index]

	  def new
    if current_user.admin
      @infocenter = Infocenter.new
    else
      redirect_to not_permission_path
    end
  end 

  def index
    @infocenters = Infocenter.all.order(created_at: :DESC)
  end

  def show
    @infocenter
    @infocenters = Infocenter.all.order(created_at: :DESC)
  end

  def create
  	@infocenter = Infocenter.create(infocenter_params)
  	if @infocenter.save
  		redirect_to root_path
  	else
  		render 'new'
  	end
  end
  
  def destroy
  	@infocenter.destroy
  	redirect_to root_path
  end

  def edit
    if current_user.admin
    else
      redirect_to not_permission_path
    end
  end

  def update
  	@infocenter.update(infocenter_params)
  	redirect_to infocenter_path
  end

  private
  	def infocenter_params
  		params.require(:infocenter).permit(:user_id,:title,:body)
  	end

  	def set_infocenter
  		@infocenter = Infocenter.find(params[:id])
  	end
end
