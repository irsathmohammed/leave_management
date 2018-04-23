json.extract! leave_management, :id, :status, :approved, :rejected, :available_leave, :applied_leaves, :from_date, :to_date, :user_id, :created_at, :updated_at
json.url leave_management_url(leave_management, format: :json)
