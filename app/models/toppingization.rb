class Toppingization < ActiveRecord::Base

  belongs_to :salad
  belongs_to :salad_toppings

end
