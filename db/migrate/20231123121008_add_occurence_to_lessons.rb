class AddOccurenceToLessons < ActiveRecord::Migration[7.1]
  def change
    add_column :lessons, :occurence, :string
  end
end
