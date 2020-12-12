class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.boolean :available
      t.references :category

      t.timestamps
    end
  end
end
