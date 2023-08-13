# == Schema Information
#
# Table name: certificates
#
#  id         :bigint           not null, primary key
#  name       :string
#  photo_link :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Certificate < ApplicationRecord
    belongs_to :master

end
