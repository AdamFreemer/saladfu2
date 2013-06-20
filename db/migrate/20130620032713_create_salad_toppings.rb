class CreateSaladToppings < ActiveRecord::Migration
  def change
    create_table :salad_toppings do |t|

      t.timestamps

      t.boolean :alfala_sprouts
      t.boolean :artichokes
      t.boolean :avocado
      t.boolean :baby_corn
      t.boolean :bacon_bits
      t.boolean :beets
      t.boolean :black_olives
      t.boolean :blue_cheese
      t.boolean :broccoli
      t.boolean :cajun
      t.boolean :carrots
      t.boolean :celery
      t.boolean :cheddar
      t.boolean :chick_peas
      t.boolean :chicken
      t.boolean :chicken_cutlet
      t.boolean :corn
      t.boolean :cranberries
      t.boolean :cucumber
      t.boolean :dried
      t.boolean :eggs
      t.boolean :feta_cheese
      t.boolean :green_olives
      t.boolean :green_peas
      t.boolean :grilled_chicken
      t.boolean :ham
      t.boolean :heart_of_palm
      t.boolean :mandarin_oranges
      t.boolean :monterey_jack
      t.boolean :mozzarella
      t.boolean :mushrooms
      t.boolean :oranges
      t.boolean :parmesan_cheese
      t.boolean :pasta
      t.boolean :peppers
      t.boolean :plum
      t.boolean :red_kidney_beans
      t.boolean :red_onions
      t.boolean :roasted_red_peppers
      t.boolean :scallions
      t.boolean :sesame_chicken
      t.boolean :string_beans
      t.boolean :toamatoes
      t.boolean :tofu
      t.boolean :tomatoes
      t.boolean :tuna
      t.boolean :turkey
      t.boolean :white_tuna

    end
  end
end
