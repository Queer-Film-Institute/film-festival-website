class Author < ContentfulModel::Base
    self.content_type_id = '1kUEViTN4EmGiEaaeC6ouY'
  
    belongs_to_many :posts
end
