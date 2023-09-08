# frozen_string_literal: true

# == Schema Information
#
# Table name: services
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
#  price       :decimal(10, 2)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  master_id   :uuid             not null
#
# Indexes
#
#  index_services_on_master_id  (master_id)
#
# Foreign Keys
#
#  fk_rails_...  (master_id => masters.id)
#
class Service < ApplicationRecord
  belongs_to :master
end
