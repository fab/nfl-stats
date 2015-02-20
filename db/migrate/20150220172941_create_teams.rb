class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :city
      t.string :color_scheme, array: true

      t.timestamps
    end
  end
end
