class DeleteEmailColumnFromProperties < ActiveRecord::Migration[6.1]
  def change
    remove_column :properties, :email
  end
end
