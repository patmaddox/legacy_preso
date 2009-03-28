class CreateAccountRegistrations < ActiveRecord::Migration
  def self.up
    create_table :account_registrations do |t|
      t.integer :account_id

      t.timestamps
    end
  end

  def self.down
    drop_table :account_registrations
  end
end
