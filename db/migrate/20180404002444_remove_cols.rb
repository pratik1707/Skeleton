class RemoveCols < ActiveRecord::Migration[5.0]
  def change
    remove_column :schedules, :question_id
    remove_column :schedules, :interview_id
  end
end
