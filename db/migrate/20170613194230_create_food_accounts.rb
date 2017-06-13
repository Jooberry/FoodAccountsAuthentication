class CreateFoodAccounts < ActiveRecord::Migration
  def change
    create_table :food_accounts do |t|
      t.text :name
      t.string :food_type
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
