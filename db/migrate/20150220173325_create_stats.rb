class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.string :title
      t.string :role

      t.timestamps
    end
  end
end
