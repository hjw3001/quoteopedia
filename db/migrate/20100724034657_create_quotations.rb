class CreateQuotations < ActiveRecord::Migration
  def self.up
    create_table :quotations do |t|
      t.text :content
      t.text :author
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :quotations
  end
end
