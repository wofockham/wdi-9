# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :text
#  created_at      :datetime
#  updated_at      :datetime
#  password_digest :string
#

class User < ActiveRecord::Base
  has_many :mixtapes
  has_secure_password

  validates :name, :presence => true
  validates :name, :uniqueness => true
end
