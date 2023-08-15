# frozen_string_literal: true

# == Schema Information
#
# Table name: masters
#
#  id         :uuid             not null, primary key
#  name       :string           not null
#  about_me   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "rails_helper"

RSpec.describe Master do
  subject(:master) { build(:master) }

  describe "associations" do
    it { expect(master).to have_many(:admin_masters).dependent(:destroy) }
    it { expect(master).to have_many(:admins).through(:admin_masters) }
    it { expect(master).to have_many(:certificates).dependent(:destroy) }
    it { expect(master).to have_many(:articles) }
    it { expect(master).to have_many(:contacts).dependent(:destroy) }
    it { expect(master).to have_many(:reviews) }
    it { expect(master).to have_many(:services).dependent(:destroy) }
    it { expect(master).to have_many(:discounts).dependent(:destroy) }
  end

  describe "validations" do
    it { expect(master).to validate_presence_of(:name) }
    it { expect(master).to validate_uniqueness_of(:name) }
  end
end
