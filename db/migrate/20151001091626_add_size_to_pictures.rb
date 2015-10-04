class AddSizeToPictures < ActiveRecord::Migration
  def change
  	add_column :pictures, :size, :string
  end
end
