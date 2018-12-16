class CreateComentarios < ActiveRecord::Migration[5.1]
  def change
    create_table :comentarios do |t|
      t.string :usuario
      t.text :texto
      t.references :topico, foreign_key: true

      t.timestamps
    end
  end
end
