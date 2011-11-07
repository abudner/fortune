class CreateForts < ActiveRecord::Migration
  def change
    create_table :forts do |t|
      t.string :source
      t.text :body

      t.timestamps
    end
  end
end
