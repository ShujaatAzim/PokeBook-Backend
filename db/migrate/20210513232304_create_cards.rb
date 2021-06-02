class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.integer :user_id
      t.string :name
      t.string :image
      t.string :set
      t.integer :quantity
      t.string :notes

      t.timestamps
    end
  end
end
