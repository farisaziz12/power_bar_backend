class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :admin, :default => false
      t.integer :balance, :default => 0

      t.timestamps
    end
  end
end
