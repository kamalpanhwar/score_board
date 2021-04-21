# frozen_String_literal: true

require 'rails_helper'

RSpec.describe ScoresController do
  describe 'Get index' do
    let!(:score) { FactoryBot.create(:score) }
    it 'assigns @scores' do
      get scores_path
      expect(response).to have_http_status(:ok)
      expect(response).to render_template('index')
      expect(assigns(:scores)).to eql(Score.all)
    end
  end
end
