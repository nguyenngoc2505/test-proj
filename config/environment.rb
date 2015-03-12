require 'rubygems'
require 'bundler/setup'
require 'lotus/setup'
require_relative '../lib/test-proj'
require_relative '../apps/web/application'
require_relative '../apps/admin/application'
require_relative '../apps/api/v1/application'

Lotus::Container.configure do
  mount Admin::Application, at: "/admin"
  mount ApiV1::Application, at: "/api/v1"
  mount Web::Application, at: '/'
end
