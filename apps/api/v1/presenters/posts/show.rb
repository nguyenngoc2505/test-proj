module ApiV1
  module Presenters
    module Posts
      class Show
        attr_reader :post

        def initialize(post)
          @post = post
        end

        def render
          {
            id: post.id,
            title: post.title,
            content: post.content
          }
        end
      end
    end
  end
end