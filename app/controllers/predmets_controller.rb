class PredmetsController < ApplicationController
before_action :authenticate_user!

def create
  if current_user.admin
    params[:predmet][:category_id] = params[:category_id]
    params[:predmet][:rozklad_id] = params[:rozklad_id]
    @predmet = Predmet.create(predmet_params)
    if @predmet.save
    else 
      @predmet.errors.full_messages.each do |msg|
       @msg = msg
      end  
      flash[:notice] = "#{@msg}"
    end
    redirect_to rozklad_path(params[:rozklad_id])
  else
    redirect_to not_permission_path
  end
end

def edit
  if current_user.admin
    else
      redirect_to not_permission_path
  end
end

def destroy
  @rozklad = Rozklad.find(params[:rozklad_id])
  @predmet = @rozklad.predmets.find(params[:id])
  @predmet.destroy
  redirect_to rozklad_path(params[:rozklad_id])
end

private

  def predmet_params
    params.require(:predmet).permit(:user_id, :name, :rozklad_id, :category_id)
  end

end

#Answer - predmet
#Question - rozklad