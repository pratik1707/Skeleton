class InterviewQuestion < ApplicationRecord
  belongs_to :interview
  belongs_to :question
  default_scope { order(:display_order)} #Order the results by display_order


end
