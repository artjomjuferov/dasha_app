class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @events = Event.paginate(:page => params[:page])
  end

  def show
    @event = Event.find params[:id]
  end

  def incomings
    @event = Event.find params[:id]
    @incomings = @event.incomings
  end

  def outcomings
    @event = Event.find params[:id]
    @outcomings = @event.outcomings
  end

  def members
    @event = Event.find params[:id]
    @members = @event.members
  end

  def workers
    @event = Event.find params[:id]
    @workers = @event.workers
  end

  def sponsors
    @event = Event.find params[:id]
    @sponsors = @event.sponsors
  end


end
