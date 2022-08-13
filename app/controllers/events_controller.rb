class EventsController < ApplicationController
  def events_by_number
    @events = Event.where(number: params[:number])
    render json: @events, status: 200
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

    {
      issue: params['issue'],
      action: JSON.parse(request.body.read)['action'],
      sender: params['sender'],
      repository: params['repository'],
      number: params['issue']['number'].to_i
    }
  end

  # def event_params
  #   params.require(:event).permit(paylaod)
  # end

  def render_error
    render json: { errors: @event.errors.full_messages },
           status: :unprocessable_entity
  end
end
