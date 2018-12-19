class CreateShares < ActiveRecord::Migration[5.2]
  def change
    create_table :shares do |t|
      t.bigint :user_id
      t.bigint :pet_id
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
