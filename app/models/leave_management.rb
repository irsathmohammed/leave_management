class LeaveManagement < ApplicationRecord
  belongs_to :user

  enum status: [:approved, :not_approved, :pending]

end
