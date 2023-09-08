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
# Indexes
#
#  index_certificates_on_master_id  (master_id)
#
# Foreign Keys
#
#  fk_rails_...  (master_id => masters.id)
#
class Certificate < ApplicationRecord
  belongs_to :master
end
