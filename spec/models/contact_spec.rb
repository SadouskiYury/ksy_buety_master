# add some test for contact model using shoulda-matchers

# frozen_string_literal: true

# == Schema Information
#
# Table name: contacts
#
#  id           :bigint           not null, primary key
#  link         :string
#  note         :string
#  phone_number :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  master_id    :uuid
#
# Indexes
#
#  index_contacts_on_master_id  (master_id)
#
# Foreign Keys
#
#  fk_rails_...  (master_id => masters.id)
#
require "rails_helper"

RSpec.describe Contact do
  subject(:contact) { build(:contact) }

  describe "phone number validations" do
    it "validate prsence phone_number" do
      expect(contact).to validate_presence_of(:phone_number)
    end

    it "validate uniqueness phone_number" do
      expect(contact).to validate_uniqueness_of(:phone_number).case_insensitive
    end

    it do
      expect(contact).not_to allow_values("375-29a-69-69-69", "12cd-29-69-69-69")
        .for(:phone_number)
        .with_message("is not a valid phone number")
    end

    it do
      expect(contact).to allow_values("+375-29-6969691", "+37529-7968518", "+37529-79-68-518", "+375-29-69-96-91")
        .for(:phone_number)
        .with_message("is not a valid phone number")
    end
  end

  describe "associations" do
    it { expect(contact).to belong_to(:master) }
  end
end
