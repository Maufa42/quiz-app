class Questionnaire < ApplicationRecord
  has_many :quiz_responses,dependent: :destroy
  has_many :questions, dependent: :destroy
  accepts_nested_attributes_for :questions, allow_destroy: true
end
