class CreateMatchSets < ActiveRecord::Migration[5.1]
  def change
    create_table :match_sets do |t|
      t.integer :match_id
      t.integer :set_number
      t.integer :hosting_team_score
      t.integer :guest_team_score

      t.timestamps
    end
  end
end
