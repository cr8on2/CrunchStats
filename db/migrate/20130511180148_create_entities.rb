class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :name
      t.string :kind
      t.string :location
      t.string :status
      t.string :perma
      t.integer :industry_id
    end
  end
end
