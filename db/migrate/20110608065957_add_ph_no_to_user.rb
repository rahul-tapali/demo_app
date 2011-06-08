class AddPhNoToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :dept, :string
  end

  def self.down
    remove_column :users, :dept
  end
end
