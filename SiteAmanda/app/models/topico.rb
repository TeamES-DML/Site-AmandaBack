class Topico < ApplicationRecord
  has_many :comentarios, dependent: :destroy
	validates :titulo, presence: true
	validates_length_of :titulo, minimum: 5, maximum: 50
	validates :corpo, presence: true
	validates_length_of :corpo, minimum: 10, maximum: 180
end