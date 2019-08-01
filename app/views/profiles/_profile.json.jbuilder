json.extract! profile, :id, :user_id, :first_name, :last_name, :address1, :address2, :city, :state, :zip, :email, :phone, :active, :created_at, :updated_at
json.url profile_url(profile, format: :json)
