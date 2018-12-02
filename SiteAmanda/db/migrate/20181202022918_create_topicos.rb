class CreateTopicos < ActiveRecord::Migration[5.1]
  def change
    create_table :topicos do |t|
      t.string :titulo
      t.text :corpo

      t.timestamps
    end
  end
end
