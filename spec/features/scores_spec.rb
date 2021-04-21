require 'rails_helper'

describe 'The home page with score table', type: :feature do
  scenario 'user can see index score board' do
    visit '/scores'
    expect(page).to have_content(I18n.t('scores.index.heading'))
  end

  scenario 'user can see actual file' do
    visit '/actual_file'
    expect(page).to have_content(I18n.t('scores.actual_file.heading'))
  end
end
