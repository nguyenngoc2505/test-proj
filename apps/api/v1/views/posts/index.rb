module ApiV1::Views::Posts
  class Index
    include ApiV1::View
    format :json

    def render
      ApiV1::Presenters::Posts::Index.new(posts).render.to_json
    end
  end
end
