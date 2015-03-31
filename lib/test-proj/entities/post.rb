class Post
  include Lotus::Entity
  include Lotus::Validations

  attribute :title, type: String, presence: true
  attribute :content, type: String, presence: true
  attribute :user_id, type: Integer, presence: true

end
