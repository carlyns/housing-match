class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :email
      t.string :password
      t.text :safe_neighborhood_definition
    end
  end
end
