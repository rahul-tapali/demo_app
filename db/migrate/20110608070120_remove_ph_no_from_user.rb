class RemovePhNoFromUser < ActiveRecord::Migration
  def self.up
    remove_column :users, :dept
  end

  def self.down
    add_column :users, :dept, :string
  end
end
