# frozen_string_literal: true

RSpec.describe Todoist::SDK do
  it "has a version number" do
    expect(Todoist::SDK::VERSION).not_to be nil
  end

  it 'loads the todist api token automaticly' do 
    expect(Todoist::SDK::API_TOKEN).to be_a(String)

    #delete me later when we figure out a better way to do this.  
    expect(Todoist::SDK::API_TOKEN.length).not_to eq(0)
  end

  describe '#projects' do 
    it 'returns a response with a status code of 200' do 
      response = Todoist::SDK.projects
      expect(response.status).to eq(200)
    end

    it 'returns the projects' do 
      response = Todoist::SDK.projects 
      expect(response.body).to be_a(Array)

      pp Todoist::SDK::projects.body
    end
  end
end
