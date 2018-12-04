class AddStatusToFormulario < ActiveRecord::Migration[5.1]
  def change
    add_column :formularios, :status, :string, default: "Pendente"
  end
end
