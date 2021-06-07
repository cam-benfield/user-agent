class CreateVisitors < ActiveRecord::Migration[6.1]
  def change
    create_table :visitors do |t|
      t.string :name
      t.text :agent
      t.boolean :addons
      t.string :url

      t.timestamps
    end
  end
end
