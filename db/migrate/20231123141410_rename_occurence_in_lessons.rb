class RenameOccurenceInLessons < ActiveRecord::Migration[7.1]
  def change
    rename_column :lessons, :occurence, :occurrence
  end
end
