class RemoveColCandidateId < ActiveRecord::Migration[5.0]
  def change
    remove_column :interviews, :candidate_id
  end
end
