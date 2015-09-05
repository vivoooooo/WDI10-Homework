# == Schema Information
#
# Table name: organisations
#
#  id         :integer          not null, primary key
#  name       :text
#  year       :text
#  image      :text
#  profile    :text
#  created_at :datetime
#  updated_at :datetime
#

class Organisation < ActiveRecord::Base
	has_and_belongs_to_many :articles
	has_and_belongs_to_many :people
end
