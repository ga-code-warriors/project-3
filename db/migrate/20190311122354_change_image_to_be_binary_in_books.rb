class ChangeImageToBeBinaryInBooks < ActiveRecord::Migration[5.2]
  def change
    change_column :books, :image, 'bytea USING CAST(image AS bytea)'
  end
end
