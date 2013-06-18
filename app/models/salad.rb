class Salad < ActiveRecord::Base
  def self.search_for(query)
    validates :salad_name, :lettuce_type, :description, presence: true
    validates :description, length: { minimum: 20 }
    validates :salad_name, uniqueness: true
    where('salad_name LIKE :search_query OR description LIKE :search_query OR lettuce_type LIKE :search_query', search_query: "%#{query}%")
  end
end
