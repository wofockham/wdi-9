# == Schema Information
#
# Table name: sneakies
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Sneaky < ActiveRecord::Base
end
