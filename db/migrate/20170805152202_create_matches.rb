class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.datetime :time
      t.integer :hosting_team_id
      t.integer :guest_team_id
      t.integer :court_id
      t.integer :hosting_team_score
      t.integer :guest_team_score

      t.timestamps
    end
  end
end
