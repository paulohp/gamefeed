class AddPictureToChampionship < ActiveRecord::Migration
  def change
    add_column :championships, :picture, :string
  end
end
