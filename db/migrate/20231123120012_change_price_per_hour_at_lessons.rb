class ChangePricePerHourAtLessons < ActiveRecord::Migration[7.1]
  def change
    rename_column :lessons, :price_per_hour, :total_price
  end
end
