# frozen_string_literal: true

json.extract! master, :id, :id, :about_me, :certificate_id, :article_id, :contact_id, :review_id, :service_id, :discount_id, :created_at,
              :updated_at
json.url master_url(master, format: :json)
