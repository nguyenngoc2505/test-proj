module Admin::Controllers::Posts
  class Edit
    include Admin::Action
    expose :post

    def call(params)
      @post = PostRepository.find params[:id]
    end
  end
end
