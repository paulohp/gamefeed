class AddPictureToCompetitor < ActiveRecord::Migration
  def change
    add_column :competitors, :picture, :string
  end
end
