class ChangeImageToBeBinaryInBooks < ActiveRecord::Migration[5.2]
  def change
    change_column :books, :image, 'bytea USING CAST(image AS bytea)'
  end
  def up
    add_attachment :books, :image
  end

  def down
    remove_attachment :books, :image
  end
end
