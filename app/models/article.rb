# == Schema Information
#
# Table name: articles
#
#  id          :bigint           not null, primary key
#  title       :string           not null
#  description :text
#  photo_link  :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Article < ApplicationRecord
  belongs_to :master

end
