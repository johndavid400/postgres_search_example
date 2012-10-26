class Post < ActiveRecord::Base
  attr_accessible :body, :title

  include PgSearch
  multisearchable :against => [:title, :body]
  pg_search_scope :partial_search,
    :against => {
      :title => 'A',
      :body => 'B'
    },
    :using => {
      :tsearch => {:prefix => true}
    }

end
