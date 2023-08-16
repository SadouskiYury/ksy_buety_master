# frozen_string_literal: true

# == Schema Information
#
# Table name: services
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  price       :decimal(10, 2)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  master_id   :uuid             not null
#
class Service < ApplicationRecord
  belongs_to :master
end