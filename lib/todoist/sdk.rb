# frozen_string_literal: true

require_relative "sdk/version"
require 'dotenv/load'
require 'faraday'
require 'ostruct'

module Todoist
  module SDK
    API_TOKEN=ENV['API_TOKEN']

    def self.projects
      response = connection.get('projects')

      sdk_response(response)
    end

    def self.tasks(project_id)
      response = connection.get('tasks', project_id: project_id)

      sdk_response(response)
    end

    def self.connection
      Faraday.new('https://api.todoist.com/api/v1', headers: { 'Authorization' => "Bearer #{API_TOKEN}"} ) do |f|
        f.response :json
      end
    end

    def self.sdk_response(faraday_response)
      OpenStruct.new(
        status: faraday_response.status,
        data: faraday_response.body.fetch('results', [])
      )
    end

    class Error < StandardError; end
    # Your code goes here...
  end
end
