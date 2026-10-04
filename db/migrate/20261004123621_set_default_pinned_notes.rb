class SetDefaultPinnedNotes < ActiveRecord::Migration[8.1]
  def change
    Note.where(pinned: nil).update_all(pinned: false)

    change_column_default(:notes, :pinned, false)
    change_column_null(:notes, :pinned, false)
  end
end
