class CreateLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :links do |t|
      t.integer :user_id
      t.string :utm_source
      t.string :utm_medium

      t.timestamps
    end
  end
end
