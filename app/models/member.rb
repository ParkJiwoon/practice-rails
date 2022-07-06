class Member < ApplicationRecord
  include AASM

  aasm whiny_transitions: false do
    state :active, initial: true
    state :dormant
    state :withdrawn

    event :dormantize do
      transitions from: :active, to: :dormant
    end

    event :withdraw do
      transitions from: [:active, :dormant], to: :withdrawn
    end

    event :recover do
      transitions from: :dormant, to: :active
    end
  end
end
