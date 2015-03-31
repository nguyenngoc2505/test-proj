module ApiV1::Controllers::Posts
  class Show
    include ApiV1::Action
    expose :post

    def call(params)
      @post = PostRepository.find params[:id]
    end
  end
end

# To call Api
# curl -i -H "Accept: application/json" http://0.0.0.0:2300/api/v1/posts/:id
