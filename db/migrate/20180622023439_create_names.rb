class CreateNames < ActiveRecord::Migration[5.2]
  def change
    create_table :names do |t|
      t.string :description
      t.string :category
      t.float :price
      t.integer :version
      t.string :author
      t.string :logo

      t.timestamps
    end
  end
end
