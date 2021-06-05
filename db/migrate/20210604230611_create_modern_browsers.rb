class CreateModernBrowsers < ActiveRecord::Migration[6.0]
    def change
      create_table :modern_browsers do |t|
        t.string :name
        t.string :company
        t.text :information
  
        t.timestamps
      end
    end
  end