class SaladToppings < ActiveRecord::Base
  has_many :toppingizations
  has_many :salads, through: :toppingizations

end
