class Api::GreetingsController < ApplicationController
  def random
    render json: { message: Message.order('RANDOM()').first&.message }
  end
end
