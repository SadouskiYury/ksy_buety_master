# frozen_string_literal: true

# == Schema Information
#
# Table name: contacts
#
#  id           :bigint           not null, primary key
#  link         :string
#  note         :string
#  phone_number :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  master_id    :uuid
#
# Indexes
#
#  index_contacts_on_master_id  (master_id)
#
# Foreign Keys
#
#  fk_rails_...  (master_id => masters.id)
#
class Contact < ApplicationRecord
  belongs_to :master
  #  rubocop:disable Rails/UniqueValidationWithoutIndex
  validates :phone_number, presence: true, uniqueness: { case_sensitive: false }
  #  rubocop:enable Rails/UniqueValidationWithoutIndex
  validates :phone_number,
            format: { with: /\A[+]?\d{1,3}[-.\s]?\d{1,14}[-.\s]?\d{1,14}[-.\s]?\d{1,14}[-.\s]?\d{1,14}\z/,
                      message: "is not a valid phone number" }
end
