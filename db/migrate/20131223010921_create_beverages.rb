class CreateBeverages < ActiveRecord::Migration
  def change
    create_table :beverages do |t|
      t.string :type
      t.integer :user_id

      t.timestamps
    end
  end
end
