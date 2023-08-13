# == Schema Information
#
# Table name: masters
#
#  id             :uuid             not null, primary key
#  name           :string           not null
#  about_me       :text
#  certificate_id :bigint
#  article_id     :bigint
#  contact_id     :bigint
#  review_id      :bigint
#  discount_id    :bigint
#  service_id     :bigint           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require 'rails_helper'

RSpec.describe Master, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
