# frozen_string_literal: true

# == Schema Information
#
# Table name: admins
#
#  id                     :uuid             not null, primary key
#  email                  :string           not null
#  encrypted_password     :string           not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many  :admin_masters, dependent: :destroy
  has_many  :masters, through: :admin_masters

  validates :email, uniqueness: true
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/, message: "is not a valid email" }
end
