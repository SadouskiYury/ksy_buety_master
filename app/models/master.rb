# == Schema Information
#
# Table name: masters
#
#  id             :uuid             not null, primary key
#  name           :string           not null
#  about_me       :text
#  certificate_id :bigint
#  article_id     :bigint
#  contact_id     :bigint
#  review_id      :bigint
#  discount_id    :bigint
#  service_id     :bigint           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Master < ApplicationRecord
  has_many :certificates, dependent: :destroy
  has_many :articles
  has_many :contacts, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :services, dependent: :destroy
  has_many :discounts, dependent: :destroy

  validates :name, presence: true
end
