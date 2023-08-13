# == Schema Information
#
# Table name: contacts
#
#  id           :bigint           not null, primary key
#  link         :string
#  phone_number :string
#  note         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Contact < ApplicationRecord
    belongs_to :master

end
