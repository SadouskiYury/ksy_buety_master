# frozen_string_literal: true

# == Schema Information
#
# Table name: masters
#
#  id         :uuid             not null, primary key
#  name       :string           default("Master"), not null
#  about_me   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Master < ApplicationRecord
  has_many :certificates, dependent: :destroy
  has_many :articles, dependent: :nullify
  has_many :reviews, dependent: :nullify
  has_many :contacts, dependent: :destroy
  has_many :services, dependent: :destroy
  has_many :discounts, dependent: :destroy

  has_many :admin_masters, dependent: :destroy
  has_many  :admins, through: :admin_masters
  # rubocop:disable Rails/UniqueValidationWithoutIndex
  validates :name, presence: true, uniqueness: { case_sensitive: true }
  # rubocop:enable Rails/UniqueValidationWithoutIndex
end
