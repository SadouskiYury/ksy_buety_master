# == Schema Information
#
# Table name: admins
#
#  id                     :uuid             not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
require 'rails_helper'

RSpec.describe Admin, type: :model do
  it "valid with valid attritbutes" do
    expect(Admin.new(email: 'super_admin')).to be_valid
   end
  
   it "invalid with invalid attritbutes" do
    expect(Admin.new).not_to be_valid
   end
end
