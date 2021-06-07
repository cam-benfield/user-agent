class AddDetailsToVisitors < ActiveRecord::Migration[6.1]
  def change
    add_column :visitors, :speedtest_url, :text
    add_column :visitors, :javascript, :boolean
    add_column :visitors, :cookies, :boolean
    add_column :visitors, :third_party_cookies, :boolean
  end
end
