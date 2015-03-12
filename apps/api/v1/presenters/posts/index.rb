module ApiV1
  module Presenters
    module Posts
      class Index
        attr_reader :posts

        def initialize(posts)
          @posts = posts
        end

        def render
          posts.map{|post| format_json post}
        end

        def format_json post
          {
            id: post.id,
            title: post.title
          }
        end
      end
    end
  end
end