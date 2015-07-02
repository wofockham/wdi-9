# == Schema Information
#
# Table name: fruits
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string
#  type       :string
#

class Fruit < ActiveRecord::Base
  belongs_to :shelf

  validates_presence_of :name

  def squishy?
    true
  end
end
