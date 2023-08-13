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
require 'rails_helper'

RSpec.describe AdminMaster, type: :model do
 it "valid with valid attritbutes" do
  expect(AdminMaster.new(role: 'super_admin')).to be_valid
 end

 it "invalid with invalid attritbutes" do
  expect(AdminMaster.new).not_to be_valid
 end
end
