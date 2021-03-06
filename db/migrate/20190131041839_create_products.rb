class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :_id
      t.string :name
      t.string :slug
      t.boolean :download, default: false
      t.boolean :inprogress, default: false
      t.string :card_image
      t.references :category, foreign_key: true
      
      t.timestamps
    end
  end
end
