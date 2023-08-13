# == Schema Information
#
# Table name: admin_masters
#
#  id         :uuid             not null, primary key
#  admin_id   :uuid             not null
#  master_id  :uuid             not null
#  role       :enum             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class AdminMaster < ApplicationRecord
  ADMIN= 'admin'
  SUPER_ADMIN = 'super_admin'
  MASTER = 'master'

  enum :role_type, { admin: ADMIN, master: MASTER, super_admin: SUPER_ADMIN }, prefix: true
  has_one :admin
  has_one :master

  validates :role, presence: true
end
