class Post < ContentfulModel::Base
  self.content_type_id = '2wKn6yEnZewu2SCCkus4as'

  has_one :author

  def self.find_all
    self.all.load
  end
end
