module ApiV1
  class Application < Lotus::Application
    configure do
      root __dir__

      load_paths << [
        'controllers',
        'views',
        'presenters'
      ]

      routes 'config/routes'

      body_parsers :json
      default_format :json

      controller.prepare do
        # include MyAuthentication # included in all the actions
        # before :authenticate!    # run an authentication before callback
      end

      view.prepare do
        # include MyRoutingHelpers # included in all the views
      end
    end

    ##
    # DEVELOPMENT
    #
    configure :development do
      # Don't handle exceptions, render the stack trace
      handle_exceptions false

      # Serve static assets during development
      serve_assets      true
    end

    ##
    # TEST
    #
    configure :test do
      # Don't handle exceptions, render the stack trace
      handle_exceptions false

      # Serve static assets during development
      serve_assets      true
    end

    ##
    # PRODUCTION
    #
    configure :production do
      # scheme 'https'
      # host   'example.org'
      # port   443
    end
  end
end
