class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.integer :entity_funding_id
      t.integer :funding_round_id
    end
  end
end
