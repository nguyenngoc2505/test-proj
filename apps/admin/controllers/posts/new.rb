module Admin::Controllers::Posts
  class New
    include Admin::Action
    expose :post

    def call(params)
      @post = Post.new
    end
  end
end
