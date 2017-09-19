class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.text :name
      t.integer :type_id
      t.integer :user_id, :null => true
      t.integer :tournament_id
      t.integer :status_id, :null => true

      t.timestamps
    end
  end
end
