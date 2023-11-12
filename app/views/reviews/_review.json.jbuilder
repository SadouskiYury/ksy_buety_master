# frozen_string_literal: true

json.extract! review, :id, :photo_link, :description, :created_at, :updated_at
json.url review_url(review, format: :json)
