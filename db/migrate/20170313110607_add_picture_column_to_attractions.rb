class AddPictureColumnToAttractions < ActiveRecord::Migration
  def change
    add_column :attractions, :picture, :string
  end
end
