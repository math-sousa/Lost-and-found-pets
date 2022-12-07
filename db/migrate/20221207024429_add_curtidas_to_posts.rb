class AddCurtidasToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :curtidas, :integer
  end
end
