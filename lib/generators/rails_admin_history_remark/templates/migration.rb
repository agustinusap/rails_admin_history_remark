class AddRemarkToVersions < ActiveRecord::Migration[5.0]
  def change
    add_column :versions, :remark, :text
  end
end
