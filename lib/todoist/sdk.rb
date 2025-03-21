# frozen_string_literal: true

require_relative "sdk/version"
require 'dotenv/load'
require 'faraday'

module Todoist
  module SDK
    API_TOKEN=ENV['API_TOKEN']


    def self.projects 
      puts 
      connection = Faraday.new('https://api.todoist.com/rest/v2/', headers: { 'Authorization' => "Bearer #{API_TOKEN}"} ) do |f|
        f.response :json
      end

      connection.get('projects')
    end

    class Error < StandardError; end
    # Your code goes here...
  end
end
