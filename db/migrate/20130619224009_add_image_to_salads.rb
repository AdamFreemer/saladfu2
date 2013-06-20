class AddImageToSalads < ActiveRecord::Migration
  def change
    add_column :salads, :image, :string
  end
end
