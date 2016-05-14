class AddActiveColumnToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :active, :boolean, :default => 1
    User.update_all ["active = ?", true]
  end

  def self.down
    remove_column :users, :active
  end
end
