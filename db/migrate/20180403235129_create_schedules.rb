class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.integer :interviewer_id
      t.integer :candidate_id
      t.datetime :schedule
      t.timestamps
    end
  end
end
