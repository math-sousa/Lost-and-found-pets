class AddLocalToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :local, :string
  end
end
