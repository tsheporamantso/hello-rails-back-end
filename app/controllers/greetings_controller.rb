class GreetingsController < ApplicationController
  def random
    random_message = Message.order('RANDOM()').first
    render json: random_message.text 
  end
end
