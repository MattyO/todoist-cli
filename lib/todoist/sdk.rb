# frozen_string_literal: true

require_relative "sdk/version"
require 'dotenv/load'
require 'faraday'
require 'ostruct'

module Todoist
  module SDK
    API_TOKEN=ENV['API_TOKEN']

    def self.projects
      puts 'token value'
      puts API_TOKEN
      connection = Faraday.new('https://api.todoist.com/api/v1', headers: { 'Authorization' => "Bearer #{API_TOKEN}"} ) do |f|
        f.response :json
      end

      response = connection.get('projects')
      OpenStruct.new(
        status: response.status,
        data: response.body.fetch('results', [])
      )
    end

    def self.tasks(project_id)
      connection = Faraday.new('https://api.todoist.com/api/v1', headers: { 'Authorization' => "Bearer #{API_TOKEN}"} ) do |f|
        f.response :json
      end

      response = connection.get('tasks', project_id: project_id)

      OpenStruct.new(
        status: response.status,
        data: response.body.fetch('results', [])
      )
    end

    class Error < StandardError; end
    # Your code goes here...
  end
end
