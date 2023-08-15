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
require "rails_helper"

RSpec.describe AdminMaster do
  subject(:admin_master) { build(:admin_master, admin:, master:) }

  let(:admin) { create(:admin) }
  let(:master) { create(:master) }

  describe "associations" do
    it { expect(admin_master).to belong_to(:admin).optional }
    it { expect(admin_master).to belong_to(:master).optional }
  end
end
