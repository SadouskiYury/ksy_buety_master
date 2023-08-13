# == Schema Information
#
# Table name: reviews
#
#  id          :bigint           not null, primary key
#  photo_link  :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Review < ApplicationRecord
  belongs_to :master

end
