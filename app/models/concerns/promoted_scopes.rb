module PromotedScopes
  extend ActiveSupport::Concern

  included do
    scope :promoted, -> { where(promoted: true) }
    scope :of_the_day, -> { promoted.any? ? promoted.sample(1) : sample(1) }
  end
end
