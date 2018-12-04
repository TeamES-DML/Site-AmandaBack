class Formulario < ApplicationRecord
  validates :contratante, presence: true
  validates_length_of :contratante, maximum: 100
  validates :descricao, presence: true
  validates_length_of :descricao, minimum: 10, maximum: 1000
  validates :local, presence: true
  validates_length_of :local, minimum: 5, maximum: 100
  validates :data, presence: true


end
