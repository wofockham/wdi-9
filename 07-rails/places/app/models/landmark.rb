# == Schema Information
#
# Table name: landmarks
#
#  id          :integer          not null, primary key
#  name        :text
#  description :text
#  address     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  latitude    :float
#  longitude   :float
#

class Landmark < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode
end
