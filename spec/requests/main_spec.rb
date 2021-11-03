# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Home Page', type: :request do
  describe 'GET /index' do
    it 'Check if home page exist' do
      get root_path
      expect(response).to have_http_status(200)
      expect(response.body).to include('Welcome notepad')
    end
  end
end
