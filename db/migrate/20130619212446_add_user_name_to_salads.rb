class AddUserNameToSalads < ActiveRecord::Migration
  def change
    add_column :salads, :user_name, :string
  end
end
