module ApiV1::Controllers::Posts
  class Index
    include ApiV1::Action
    expose :posts

    def call(params)
      @posts = PostRepository.all
    end
  end
end


# To call Api
# curl -i -H "Accept: application/json" http://0.0.0.0:2300/api/v1/posts