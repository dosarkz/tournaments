class CreateTournaments < ActiveRecord::Migration[5.1]
  def change
    create_table :tournaments do |t|
      t.text :name
      t.integer :status_id
      t.timestamp :start_at

      t.timestamps
    end
  end
end
