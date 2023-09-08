# frozen_string_literal: true

# == Schema Information
#
# Table name: discounts
#
#  id         :bigint           not null, primary key
#  amount     :decimal(, )
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  master_id  :uuid
#
# Indexes
#
#  index_discounts_on_master_id  (master_id)
#
# Foreign Keys
#
#  fk_rails_...  (master_id => masters.id)
#
class Discount < ApplicationRecord
  belongs_to :master
end
