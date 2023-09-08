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
require "rails_helper"

RSpec.describe AdminMaster do
  subject(:admin_master) { build(:admin_master, admin:, master:) }

  let(:admin) { create(:admin) }
  let(:master) { create(:master) }

  describe "associations" do
    it { expect(admin_master).to belong_to(:admin) }
    it { expect(admin_master).to belong_to(:master) }
  end
end
