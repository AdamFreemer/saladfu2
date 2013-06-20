class AddToppingsToSalad < ActiveRecord::Migration
  def change
    add_column :salads, :cheese, :boolean
    add_column :salads, :tomatoes, :boolean
    add_column :salads, :cucumbers, :boolean
    add_column :salads, :croutons, :boolean
  end
end
