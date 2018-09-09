class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
    	t.integer :post_id
    	t.string :title
    	t.string :link
    end
  end
end
