class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text :message
      t.string :image
      t.string :video

      t.timestamps
    end
  end
end
