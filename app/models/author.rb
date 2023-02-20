class Presenter < ContentfulModel::Base
    self.content_type_id = 'author'
  
    belongs_to_many :posts
end
