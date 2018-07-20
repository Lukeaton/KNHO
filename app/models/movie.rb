# == Schema Information
#
# Table name: movies
#
#  id          :bigint(8)        not null, primary key
#  genre       :text
#  image       :text
#  rating      :integer
#  review      :text
#  title       :text
#  plot        :text
#  director_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  year        :integer
#

class Movie < ApplicationRecord
  belongs_to  :director, :optional => true
  has_many :categories, :as => :member
  has_many :lists, :through => :categories
end
