class AddLimitToTitleNote < ActiveRecord::Migration[8.1]
  def change
    change_column(:notes, :title, :string, limit: 100)
  end
end
