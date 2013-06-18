class CreateSalads < ActiveRecord::Migration
  def change
    create_table :salads do |t|
      t.string :salad_name
      t.string :description
      t.integer :votes
      t.string :lettuce_type

      t.timestamps
    end
  end
end
