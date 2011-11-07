class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :fort
      t.string :author
      t.text :body

      t.timestamps
    end
    add_index :comments, :fort_id
  end
end
