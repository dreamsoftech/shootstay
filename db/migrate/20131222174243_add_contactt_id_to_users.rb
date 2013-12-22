class AddContacttIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :contact_id, :string
  end
end
