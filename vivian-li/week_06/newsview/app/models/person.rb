# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  name       :text
#  birthday   :date
#  image      :text
#  profile    :text
#  created_at :datetime
#  updated_at :datetime
#

class Person < ActiveRecord::Base
	has_and_belongs_to_many :articles
	has_and_belongs_to_many :organisations
	belongs_to :user
end
