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
class AdminMaster < ApplicationRecord
  belongs_to :admin
  belongs_to :master
end
