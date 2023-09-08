# frozen_string_literal: true

# == Schema Information
#
# Table name: reviews
#
#  id          :bigint           not null, primary key
#  description :text
#  photo_link  :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  master_id   :uuid
#
# Indexes
#
#  index_reviews_on_master_id  (master_id)
#
# Foreign Keys
#
#  fk_rails_...  (master_id => masters.id)
#
class Review < ApplicationRecord
  belongs_to :master
end
