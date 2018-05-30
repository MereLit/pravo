class EventsController < ApplicationController
	before_action :authenticate_user!, except:[:show, :index, :events]
  	before_action :set_event, except:[:new,:create,:index]

  def index
  	@events = Event.all.order(created_at: :DESC)
  end

def new
    if current_user.admin
      @event = Event.new
    else
      redirect_to not_permission_path
    end
  end 

  def create
  	@event = Event.create(event_params)
  	if @event.save
  		redirect_to root_path
  	else
  		render 'new'
  	end

  end
  
  def destroy
  	@event.destroy
  	redirect_to root_path
  end

  def edit
    if current_user.admin

    else
      redirect_to not_permission_path
    end
  end

  def update
  	@event.update(event_params)
  	redirect_to event_path
  end

  private
  	def event_params
  		params.require(:event).permit(:etitle,:edate,:etime,:venue,:venume_det,:etupe,:ecost,:einfo)
	
  	end

  	def set_event
  		@event = Event.find(params[:id])
  	end
end



