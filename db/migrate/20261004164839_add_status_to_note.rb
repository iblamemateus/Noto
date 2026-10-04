class AddStatusToNote < ActiveRecord::Migration[8.1]
  def change
    add_column :notes, :status, :string
  end
end
