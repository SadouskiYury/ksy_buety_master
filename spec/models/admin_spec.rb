# frozen_string_literal: true

# == Schema Information
#
# Table name: admins
#
#  id                     :uuid             not null, primary key
#  email                  :string           not null
#  encrypted_password     :string           not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
require "rails_helper"

RSpec.describe Admin do
  subject(:admin) { build(:admin) }

  describe "associations" do
    it { expect(admin).to have_many(:admin_masters).dependent(:destroy) }
    it { expect(admin).to have_many(:masters).through(:admin_masters) }
  end

  describe "validations" do
    it "validate prsence password" do
      expect(admin).to validate_presence_of(:password)
    end

    it "validate length of password" do
      expect(admin).to validate_length_of(:password)
        .is_at_least(3).with_short_message("is too short (minimum is 3 characters)")
        .is_at_most(20).with_long_message("is too long (maximum is 20 characters)")
    end

    context "when validate email" do
      it do
        expect(admin).to allow_values("john@gmail.com", "jane@example.com")
          .for(:email)
          .with_message("is not a valid email address")
      end

      it {  expect(admin).not_to allow_value("invalid_email").for(:email) }
      it {  expect(admin).to validate_uniqueness_of(:email).case_insensitive }
      it {  expect(admin).to validate_presence_of(:email) }
    end
  end
end
