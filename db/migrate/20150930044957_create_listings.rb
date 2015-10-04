class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
    	t.string :name
    	t.string :size
    	t.string :section
    	t.string :description
    	t.string :token
    end
  end
end
