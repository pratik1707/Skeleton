class AddResourceToInterviewParticipant < ActiveRecord::Migration[5.0]
  def change
    add_column :interview_participants, :resource_type, :string
    add_column :interview_participants, :resource_id, :integer
  end
end
