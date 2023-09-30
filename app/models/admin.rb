# frozen_string_literal: true

# == Schema Information
#
# Table name: admins
#
#  id                     :uuid             not null, primary key
#  email                  :string           not null
#  encrypted_password     :string           not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_admins_on_email                 (email) UNIQUE
#  index_admins_on_reset_password_token  (reset_password_token) UNIQUE
#
class Admin < ApplicationRecord
  EMAIL_REGEXP = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many  :admin_masters, dependent: :destroy
  has_many  :masters, through: :admin_masters

  validates :email, uniqueness: true
  validates :email, format: { with: EMAIL_REGEXP, message: "is not a valid email" }
  normalizes :email, with: ->(email) { email.downcase.strip }
end
