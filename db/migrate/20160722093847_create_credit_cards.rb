class CreateCreditCards < ActiveRecord::Migration
  def change
    create_table :credit_cards do |t|
      t.text :bank
      t.text :card_name
      t.string :desciption
      t.integer :travel_reward, :default =>0
      t.integer :shopping_reward, :default =>0
      t.integer :joining_fee, :default =>0
      t.integer :annual_fee, :default =>0
      t.integer :cashback_reward, :default =>0
      t.integer :fuel_reward, :default =>0
      t.boolean :is_lifestyle, :default=>false
      t.timestamps null: false
    end
  end
end
