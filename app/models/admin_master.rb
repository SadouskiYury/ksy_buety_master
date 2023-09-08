# frozen_string_literal: true

# == Schema Information
#
# Table name: admin_masters
#
#  id         :uuid             not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  admin_id   :uuid
#  master_id  :uuid
#
# Indexes
#
#  index_admin_masters_on_admin_id   (admin_id)
#  index_admin_masters_on_master_id  (master_id)
#
# Foreign Keys
#
#  fk_rails_...  (admin_id => admins.id)
#  fk_rails_...  (master_id => masters.id)
#
class AdminMaster < ApplicationRecord
  belongs_to :admin
  belongs_to :master
end
