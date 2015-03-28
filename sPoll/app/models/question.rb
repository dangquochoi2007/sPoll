class Question < ActiveRecord::Base
  belongs_to :poll

  has_many :question_options
  has_many :answers
end
