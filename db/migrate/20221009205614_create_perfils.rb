class CreatePerfils < ActiveRecord::Migration[7.0]
  def change
    create_table :perfils do |t|
      t.string :name, null: false, default: ""
      t.string :phone, null: false, default: ""

      t.timestamps
    end
  end
end
