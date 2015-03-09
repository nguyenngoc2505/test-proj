require 'rubygems'
require 'bundler/setup'
require 'lotus/setup'
require_relative '../lib/test-proj'
require_relative '../apps/web/application'
require_relative '../apps/admin/application'
# require_relative '../apps/api/application'

Lotus::Container.configure do
  mount Admin::Application, at: "/admin"
  mount Web::Application, at: '/'
  # mount Api::Application, at: "/api"
end
