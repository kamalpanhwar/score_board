# frozen_String_literal: true

require 'rails_helper'

RSpec.describe ScoresController, type: :request do
  describe 'Get index' do
    let(:score) { FactoryBot.create(:score) }
    it 'assigns @scores' do
      score
      get scores_path
      expect(response).to have_http_status(:ok)
      expect(response).to render_template('index')
      expect(assigns(:scores)).to eq(Score.all)
    end
  end

  describe 'GET actual_file' do
    it 'should show actual_file' do
      get actual_file_path
      expect(response).to have_http_status(:ok)
      expect(response).to render_template('actual_file')
    end
  end
end
