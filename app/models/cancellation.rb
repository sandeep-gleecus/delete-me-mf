class Cancellation < ApplicationRecord
  belongs_to :user
  validates :detail, presence: true, length: { minimum: 20, maximum: 500 }

  REASON = {
    injury_medical_reasons: {
      icon: "briefcase-medical",
      text: "Injury/medical reasons"
    },
    technical_issues: {
      icon: "briefcase-medical",
      text: "Technical Issues"
    },
    low_usage: {
      icon: "stopwatch",
      text: "I don’t use Mother Fit enough"
    },
    too_expensive: {
      icon: "money-bill",
      text: "Mother Fit is too expensive"
    },
    intent_to_return: {
      icon: "undo",
      text: "I’m leaving but I intend to return"
    },
    other: {
      icon: "comment-dots",
      text: "Other"
    }
  }
end
