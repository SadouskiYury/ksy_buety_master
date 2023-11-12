# frozen_string_literal: true

json.extract! admin_master, :id, :id, :admin_id, :master_id, :role, :created_at, :updated_at
json.url admin_master_url(admin_master, format: :json)
