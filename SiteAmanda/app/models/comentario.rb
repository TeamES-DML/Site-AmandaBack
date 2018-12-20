class Comentario < ApplicationRecord
  belongs_to :topico
  validates :usuario, presence: true
  validates :texto, presence: true
  validates_length_of :texto, minimum: 3, maximum: 1000
end
