class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :email, :address1, :address2
      t.string :state, limit: 2
      t.string :zip_code, limit: 10
      t.timestamps
    end
  end
end
