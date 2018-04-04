class Interviewer < ApplicationRecord
  has_many :answer_ratings
  has_many :interview_participants, as: :resource # task 4
  has_many :interviews, through: :interview_participants

  # task 3 -> get schedule of an Interviewer using the task 4 also.
  # Interviewer.first.get_schedule
  def get_schedule
    schedule_hash = Hash.new
    if self.get_next_interviews.present?
      interviews = self.get_next_interviews
      interviews.map{|interview|
      candidate = interview.get_candidate
      schedule_hash["Interview_Description_#{candidate.name}"] = interview.description
      schedule_hash["Candidate_Name_#{candidate.name}"] = candidate.name
      schedule_hash["Interview_Date_#{candidate.name}"] = interview.interview_date
      schedule_hash["Questions_#{candidate.name}"] = interview.questions.collect{|ques|ques.question} }
    end
    return schedule_hash
  end

  def get_next_interviews
    self.interviews.order(:interview_date).first(2)
  end
end
