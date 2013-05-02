class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :body
      t.integer :user_id
      t.string :commentable_name
      t.string :commentable_type

      t.timestamps
    end
  end
end
