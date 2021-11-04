# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Home Page', type: :request do
  describe 'GET /index' do
    it 'Check if home page go to login' do
      get root_path
      expect(response).to have_http_status(302)
    end
  end
end
