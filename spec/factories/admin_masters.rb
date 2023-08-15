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
FactoryBot.define do
    factory :admin_master do
      admin
      master
    end
  end
