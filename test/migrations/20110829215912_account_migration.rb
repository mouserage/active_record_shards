class AccountMigration < ActiveRecord::Migration
  shard :none

  def self.up
    add_column :accounts, :non_sharded_column, :integer
  end

  def self.down
    remove_column :accounts, :non_sharded_column
  end
end
