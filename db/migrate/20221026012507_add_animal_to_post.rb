class AddAnimalToPost < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :animal, :string
  end
end
