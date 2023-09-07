# frozen_string_literal: true

# == Schema Information
#
# Table name: discounts
#
#  id         :bigint           not null, primary key
#  name       :string
#  amount     :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  master_id  :uuid
#
class Discount < ApplicationRecord
  belongs_to :master
end
