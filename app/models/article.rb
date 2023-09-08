# frozen_string_literal: true

# == Schema Information
#
# Table name: articles
#
#  id          :bigint           not null, primary key
#  description :text
#  photo_link  :string
#  title       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  master_id   :uuid
#
# Indexes
#
#  index_articles_on_master_id  (master_id)
#  index_articles_on_title      (title)
#
# Foreign Keys
#
#  fk_rails_...  (master_id => masters.id)
#
class Article < ApplicationRecord
  belongs_to :master
end
