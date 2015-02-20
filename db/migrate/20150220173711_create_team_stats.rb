class CreateTeamStats < ActiveRecord::Migration
  def change
    create_table :team_stats do |t|
      t.references :team, index: true
      t.references :stat, index: true
      t.integer :value
      t.integer :rank

      t.timestamps
    end
  end
end
