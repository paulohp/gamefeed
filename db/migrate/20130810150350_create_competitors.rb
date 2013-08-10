class CreateCompetitors < ActiveRecord::Migration
  def change
    create_table :competitors do |t|
      t.string :name
      #t.string :email
      t.string :bio
      t.string :username
      t.string :city

      t.timestamps
    end
  end
end
