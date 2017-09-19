class CreateTournamentTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :tournament_types do |t|
      t.text :name
      t.string :alias, :null => false
      t.timestamps
    end
  end
end
