class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    change_table :customers do |t|
      t.string :name
      t.string :kana_name
      t.string :image_id
      t.boolean :is_deleted, default: false
    end
  end
end
