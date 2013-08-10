class AddApprovedToChampionship < ActiveRecord::Migration
  def change
    add_column :championships, :approved, :boolean, :default => false
  end
end
