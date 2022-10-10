class CreatePerfils < ActiveRecord::Migration[7.0]
  def change
    create_table :perfils do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.string :senha

      t.timestamps
    end
  end
end
