# frozen_string_literal: true

# == Schema Information
#
# Table name: masters
#
#  id         :uuid             not null, primary key
#  about_me   :text
#  name       :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_masters_on_name  (name) UNIQUE
#
require "rails_helper"

RSpec.describe Master do
  subject(:master) { build(:master) }

  describe "associations" do
    it { expect(master).to have_many(:admin_masters).dependent(:destroy) }
    it { expect(master).to have_many(:admins).through(:admin_masters) }
    it { expect(master).to have_many(:certificates).dependent(:destroy) }
    it { expect(master).to have_many(:articles).dependent(:nullify) }
    it { expect(master).to have_many(:contacts).dependent(:destroy) }

    it { expect(master).to have_many(:reviews).dependent(:nullify) }
    it { expect(master).to have_many(:services).dependent(:destroy) }
    it { expect(master).to have_many(:discounts).dependent(:destroy) }
  end

  describe "validations" do
    it { expect(master).to validate_presence_of(:name) }
    it { expect(master).to validate_uniqueness_of(:name) }
  end
end
