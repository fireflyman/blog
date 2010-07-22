class AddDueAtToBlog < ActiveRecord::Migration
  def self.up
    add_column :blogs, :due_at, :date
  end

  def self.down
    remove_column :blogs, :due_at
  end
end
