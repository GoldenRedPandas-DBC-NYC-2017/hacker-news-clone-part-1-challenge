class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :content, null: false
      t.string :author, null: false

      t.timestamps
    end
  end
end
