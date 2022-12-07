class AddPerfilToComments < ActiveRecord::Migration[7.0]
    def change
      add_reference :comments, :perfil, null: false, foreign_key: true
    end
  end