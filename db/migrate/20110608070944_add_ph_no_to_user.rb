class AddPhNoToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :ph_no, :string
  end

  def self.down
    remove_column :users, :ph_no
  end
end
