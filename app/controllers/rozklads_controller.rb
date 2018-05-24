class RozkladsController < ApplicationController
before_action :authenticate_user!
    before_action :set_rozklad, only: [:show,:edit,:update,:destroy]
  def new
  if current_user.admin
    @rozklad = Rozklad.new
  else
    redirect_to not_permission_path
  end
  end 

  def show
    @category = Category.find(params[:id])
    @categories = Category.all
    @predmets = Predmet.where(rozklad_id: @rozklad.id)
    @predmets = Predmet.where(category_id: @category.id)

  end

  def create
    @rozklad = Rozklad.new(rozklads_params)
    if @rozklad.save
      redirect_to root_path
    else
      render 'new'
    end

  end
  
  def destroy
    @rozklad.destroy
    redirect_to root_path
  end

  def edit
    if current_user.admin
    else
      redirect_to not_permission_path
    end
  end

  def update
    @rozklad.update(rozklads_params)
    redirect_to root_path
  end


  private
    def rozklads_params
      params.require(:rozklad).permit(:title)
  
    end

    def set_rozklad
      @rozklad = Rozklad.find(params[:id])
    end
end
#Answer - predmet
#Question - rozklad