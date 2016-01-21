# == Schema Information
#
# Table name: links
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  supplychain_id :integer
#  title          :string
#  body           :text
#  complete       :boolean
#  eta            :date
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Link < ActiveRecord::Base
  belongs_to :user
  belongs_to :supplychain
end
