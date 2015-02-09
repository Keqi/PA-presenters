class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.integer :age
      t.boolean :deleted
      t.boolean :admin

      t.timestamps null: false
    end
  end
end
