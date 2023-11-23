class RemoveOccurrenceFromLessons < ActiveRecord::Migration[7.1]
  def change
    remove_column :lessons, :occurrence
  end
end
