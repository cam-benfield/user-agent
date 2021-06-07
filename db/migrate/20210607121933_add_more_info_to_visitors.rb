class AddMoreInfoToVisitors < ActiveRecord::Migration[6.1]
    def change
        add_column :visitors, :computer_screen, :text
        add_column :visitors, :browser_size, :text
        add_column :visitors, :do_not_track, :boolean
    end
end