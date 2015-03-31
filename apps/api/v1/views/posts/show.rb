module ApiV1::Views::Posts
  class Show
    include ApiV1::View
    format :json

    def render
      ApiV1::Presenters::Posts::Show.new(post).render.to_json
    end
  end
end
