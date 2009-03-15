class CreateBoats < ActiveRecord::Migration
  def self.up
    create_table :boats do |t|
      t.integer :owner_id
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :boats
  end
end
