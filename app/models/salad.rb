class Salad < ActiveRecord::Base

  belongs_to :users
  has_many :toppingizations
  has_many :salad_toppings, through: :toppingizations

  validates :salad_name, :lettuce_type, :description, presence: true
  validates :description, length: { minimum: 20 }
  validates :salad_name, uniqueness: true

  def self.search_for(query)
    where('salad_name LIKE :search_query OR description LIKE :search_query OR lettuce_type LIKE :search_query', search_query: "%#{query}%")
  end

  mount_uploader :image, ImageUploader




end
