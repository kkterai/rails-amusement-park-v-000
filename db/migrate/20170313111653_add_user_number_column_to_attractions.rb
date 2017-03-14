class AddUserNumberColumnToAttractions < ActiveRecord::Migration
  def change
    add_column :attractions, :user_num, :integer
  end
end
