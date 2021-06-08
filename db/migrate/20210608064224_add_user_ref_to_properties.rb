class AddUserRefToProperties < ActiveRecord::Migration[6.1]
  def change
    add_reference :properties, :user,  foreign_key: true
  end
end
