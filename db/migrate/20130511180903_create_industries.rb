class CreateIndustries < ActiveRecord::Migration
  def change
    create_table :industries do |t|
      t.string :category
    end
  end
end
