class EventController < ApplicationController
  def index
    @events = Event.all
  end
  def view
    @event = Event.find(params[:id])
  end
end
