require_relative '../../config/environment'

module TestProj
  class Migrator
    def self.migrate!
      db = Sequel.connect(ENV['TEST_PROJ_DATABASE_URL'])

      db.create_table! :users do
        primary_key :id
        String :name
        Integer :age
      end

      db.create_table! :posts do
        primary_key :id
        String :title
        String :content
        Integer :user_id
      end
    end
  end
end
