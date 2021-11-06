# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Home Page', type: :request do
  describe 'GET /index' do
    it 'Home page login' do
      get root_path
      expect(response).to have_http_status(302)
    end
  end
end
