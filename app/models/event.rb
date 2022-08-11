class Event < ApplicationRecord
  validates :issue, :action, :repository, :sender, :number, presence: true
end
