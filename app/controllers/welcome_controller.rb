class WelcomeController < ApplicationController
  def index
    if competitor_signed_in?
      redirect_to "/competitors/#{current_competitor.id}"
    end
  end
end
