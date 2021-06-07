class RemoveUrlFromVisitor < ActiveRecord::Migration[6.1]
  def change
    remove_column :visitors, :url, :string
  end
end
