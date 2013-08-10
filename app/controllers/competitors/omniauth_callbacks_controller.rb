class Competitors::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  skip_before_filter :verify_authenticity_token, :only => [:steam]

  def steam
    @competitor = Competitor.find_for_steam_oauth(request.env["omniauth.auth"], current_competitor)

    if @competitor.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "steam"
      sign_in_and_redirect @competitor, :event => :authentication
    else
      session["devise.steam_data"] = request.env["omniauth.auth"]
      redirect_to new_competitor_registration_url
    end
  end

end