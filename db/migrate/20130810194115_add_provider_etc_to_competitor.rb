class AddProviderEtcToCompetitor < ActiveRecord::Migration
  def change
    add_column :competitors, :provider, :string
    add_column :competitors, :uid, :string
  end
end
