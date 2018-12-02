class CreateFormularios < ActiveRecord::Migration[5.1]
  def change
    create_table :formularios do |t|
      t.string :email
      t.string :contratante
      t.text :descricao
      t.string :data
      t.string :local

      t.timestamps
    end
  end
end
