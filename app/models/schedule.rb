class Schedule < ApplicationRecord
  belongs_to :interviewer
 # belongs_to :interview
  belongs_to :candidate
end
