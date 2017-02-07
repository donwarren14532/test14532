class ChangeColumnType < ActiveRecord::Migration[5.0]
  def change
	change_column :logins, :visited_at, :time
  end
end
