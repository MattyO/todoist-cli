# frozen_string_literal: true

require_relative "sdk/version"
require 'dotenv/load'
require 'faraday'

module Todoist
  module SDK
    API_TOKEN=ENV['API_TOKEN']

    def self.projects
      puts 'token value'
      puts API_TOKEN
      connection = Faraday.new('https://api.todoist.com/api/v1', headers: { 'Authorization' => "Bearer #{API_TOKEN}"} ) do |f|
        f.response :json
      end

      connection.get('projects')
    end

    def self.task
    end

    class Error < StandardError; end
    # Your code goes here...
  end
end
