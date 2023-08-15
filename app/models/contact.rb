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

  validates :phone_number, presence: true, uniqueness: { case_sensitive: false }
  validates :phone_number,
            format: { with: /\A[+]?\d{1,3}[-.\s]?\d{1,14}[-.\s]?\d{1,14}[-.\s]?\d{1,14}[-.\s]?\d{1,14}\z/,
                      message: "is not a valid phone number" }
end
