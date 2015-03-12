class User
  include Lotus::Entity
  include Lotus::Validations

  # attributes :name, :age

  attribute :name, type: String, presence: true
  attribute :age, type: Integer
end
