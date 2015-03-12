require 'lotus/model'
Dir["#{ __dir__ }/test-proj/**/*.rb"].each { |file| require_relative file }

Lotus::Model.configure do
  # Database adapter
  #
  # Available options:
  #
  #  * Memory adapter
  #    adapter type: :memory, uri: 'memory://localhost/test-proj_development'
  #
  #  * SQL adapter
     adapter type: :sql, uri: ENV['TEST_PROJ_DATABASE_URL']
  #    adapter type: :sql, uri: 'postgres://localhost/test-proj_development'
     # adapter type: :sql, uri: 'mysql://localhost/test-proj_development'
  #
  # adapter type: :file_system, uri: ENV['TEST_PROJ_DATABASE_URL']

  ##
  # Database mapping
  #
  # You can specify mapping file to load with:
  #
  # mapping "#{__dir__}/config/mapping"
  #
  # Alternatively, you can use a block syntax like the following:
  #
  mapping do
    collection :users do
      entity     User
      repository UserRepository
    
      attribute :id,   Integer
      attribute :name, String
      attribute :age, Integer
    end

    collection :posts do
      entity     Post
      repository PostRepository
    
      attribute :id,   Integer
      attribute :title, String
      attribute :content, String
      attribute :user_id, Integer
    end
  end
end.load!
