class CreateFundingrounds < ActiveRecord::Migration
  def change
    create_table :fundingrounds do |t|
      t.string :series
      t.float :amount
      t.string :currency
      t.string :date
      t.integer :entity_receiver_id
      t.integer :investment_id
    end
  end
end
