class Comentario < ApplicationRecord
  belongs_to :topico
  validates :usuario, presence: true
end
