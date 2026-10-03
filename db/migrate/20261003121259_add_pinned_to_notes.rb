class AddPinnedToNotes < ActiveRecord::Migration[8.1]
  def change
    add_column :notes, :pinned, :boolean
  end
end
