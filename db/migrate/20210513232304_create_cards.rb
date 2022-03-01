class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.integer :user_id
      t.string :name
      t.integer :card_number
      t.string :card_type
      t.string :set
      t.string :image
      t.integer :quantity
      t.string :rarity
      t.string :notes

      t.timestamps
    end
  end
end
