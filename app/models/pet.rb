class Pet < ApplicationRecord
  has_many :pet_histories, dependent: :destroy

  def to_s 
    name
  end

  def history_count
    pet_histories.count
  end

  # El peso promedio que tiene el animal
  def avg_weight
    pet_histories.average(:weight)
  end

  # La altura promedio que tiene
  def avg_height
    pet_histories.average(:heigth)
    
  end

  # Cuál ha sido la altura máxima
  def max_weight
    pet_histories.pluck(:weight).max
  end

  # Cuál ha sido el peso máximo
  def max_height
    pet_histories.pluck(:heigth).max
  end

end
