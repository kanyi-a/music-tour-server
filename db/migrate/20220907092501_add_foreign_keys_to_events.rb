class AddForeignKeysToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :venue_id, :string
    add_column :events, :user_id, :string
  end
end
