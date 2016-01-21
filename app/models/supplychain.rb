# == Schema Information
#
# Table name: supplychains
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  title      :string
#  complete   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Supplychain < ActiveRecord::Base
  belongs_to :user
  has_many :links
end
