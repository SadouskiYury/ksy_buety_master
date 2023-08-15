# frozen_string_literal: true

# == Schema Information
#
# Table name: reviews
#
#  id          :bigint           not null, primary key
#  photo_link  :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  master_id   :uuid
#
class Review < ApplicationRecord
  belongs_to :master
end
