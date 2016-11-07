json.extract! admin, :id, :emp_number, :first_name, :last_name, :password_digest, :created_at, :updated_at
json.url admin_url(admin, format: :json)