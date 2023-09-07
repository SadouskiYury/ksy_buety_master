# frozen_string_literal: true

# == Schema Information
#
# Table name: certificates
#
#  id         :bigint           not null, primary key
#  name       :string
#  photo_link :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  master_id  :uuid
#
class Certificate < ApplicationRecord
  belongs_to :master
end
