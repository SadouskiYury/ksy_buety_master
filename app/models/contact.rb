# frozen_string_literal: true

# == Schema Information
#
# Table name: contacts
#
#  id           :bigint           not null, primary key
#  link         :string
#  phone_number :string
#  note         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  master_id    :uuid
#
class Contact < ApplicationRecord
  belongs_to :master

  # rubocop:disable Rails/UniqueValidationWithoutIndex
  validates :phone_number, presence: true, uniqueness: { case_sensitive: false }
  # rubocop:enable Rails/UniqueValidationWithoutIndex
  validates :phone_number,
            format: { with: /\A[+]?\d{1,3}[-.\s]?\d{1,14}[-.\s]?\d{1,14}[-.\s]?\d{1,14}[-.\s]?\d{1,14}\z/,
                      message: :invalid_phone_number }
end
