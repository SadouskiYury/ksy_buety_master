# frozen_string_literal: true

json.extract! contact, :id, :link, :phone_number, :note, :created_at, :updated_at
json.url contact_url(contact, format: :json)