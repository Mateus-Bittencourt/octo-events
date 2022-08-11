class EventsController < ApplicationController
  def events_by_number
    @events = Event.where(number: params[:number])
  end

  def create
    @event = Event.new(payload)
    if @event.save
      head :created
    else
      render_error
    end
  end

  private

  def payload
    payload_body = JSON.parse(request.body.read)
    {
      issue: payload_body['issue'],
      action: payload_body['action'].to_s,
      sender: payload_body['sender'],
      repository: payload_body['repository'],
      number: payload_body['issue']['number'].to_i
    }
  end

end
