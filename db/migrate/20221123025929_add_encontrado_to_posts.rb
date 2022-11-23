class AddEncontradoToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :encontrado, :boolean, default: false
  end
end
