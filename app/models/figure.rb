class Figure < ActiveRecord::Base

  has_many :figure_titles
  has_many :landmarks

end