class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :kana_name
      t.string :encrypted_password
      t.string :email
      t.string :image_id
      t.boolean :is_deleted

      t.timestamps
    end
  end
end
