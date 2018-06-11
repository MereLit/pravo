class PrepodsController < ApplicationController
  before_action :authenticate_user!, except:[:show, :index]
  before_action :set_prepod, except:[:new,:create,:index]

  def new
    if current_user.admin
      @prepod = Prepod.new
    else
      redirect_to not_permission_path
    end
  end 

  def index
    @prepods = Prepod.all.order(created_at: :DESC)
  end

  def show
    pp @prepod
    @prepods = Prepod.all.order(created_at: :DESC)
  end

  def create
  	@prepod = Prepod.new(prepod_params)
  	if @prepod.save
  		redirect_to root_path
  	else
  		render 'new'
  	end
  end
  
  def destroy
  	@prepod.destroy
  	redirect_to root_path
  end

  def edit
    if current_user.admin
    else
      redirect_to not_permission_path
    end
  end

  def update
  	@prepod.update(prepod_params)
  	redirect_to post_path
  end

  private
  	def prepod_params
  		params.require(:prepod).permit(:name,:description,:image)
  	end

  	def set_prepod
  		@prepod = Prepod.find(params[:id])
  	end
end
