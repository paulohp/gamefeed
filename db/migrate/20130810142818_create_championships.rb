class CreateChampionships < ActiveRecord::Migration
  def change
    create_table :championships do |t|
      t.string :name
      t.string :game
      t.datetime :date
      t.integer :number_competitors
      t.text :description

      t.timestamps
    end
  end
end
