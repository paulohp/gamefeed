class Competitor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable,
          :omniauth_providers => [:steam]

  def self.find_for_steam_oauth(access_token, signed_in_resource=nil)
    data = access_token.info
    provider = access_token.provider
    uid = access_token.uid
    if competitor = Competitor.where(:username => data["nickname"]).first
      competitor
    else
      Competitor.create!(:provider => provider, :uid => uid,:name => data['name'], :picture => data['image'], :username => data["nickname"] ,:email => "example@company.com", :password => Devise.friendly_token[0,20])
    end
  end

end
