class CreateBooks < ActiveRecord::Migration[8.1]
  def change
    create_table :books do |t|
      t.string :title, null:false, index: {unique:true}
      t.string :author, null:false
      t.string :book_code, null:false, index: {unique:true}
      t.boolean :status, null:false

      t.timestamps
    end
  end
end
