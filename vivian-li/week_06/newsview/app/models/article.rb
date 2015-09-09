# == Schema Information
#
# Table name: articles
#
#  id                      :integer          not null, primary key
#  headline_english        :text
#  headline_other_language :text
#  author_english          :text
#  author_other_language   :text
#  source_english          :text
#  source_other_language   :text
#  date_published          :date
#  date_accessed           :date
#  link                    :text
#  article_text_english    :text
#  article_other_language  :text
#  screen_capture          :text
#  keywords                :text
#  issues                  :text
#  own_notes               :text
#

class Article < ActiveRecord::Base
	has_and_belongs_to_many :people
	has_and_belongs_to_many :organisations
	belongs_to :user
end


