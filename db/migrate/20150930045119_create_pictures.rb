class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
    	t.string :description
    	t.attachment :image
    	t.string :image
    	t.integer :listing_id
    	t.string :listing_token
    end
  end
end
