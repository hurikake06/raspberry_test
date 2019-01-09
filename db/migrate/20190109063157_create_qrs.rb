class CreateQrs < ActiveRecord::Migration[5.2]
  def change
    create_table :qrs do |t|
      t.string :name
      t.string :path

      t.timestamps
    end
  end
end
