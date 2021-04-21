# frozen_string_literal: true

namespace :import do
  desc 'Import Sample from csv'
  task score: :environment do
    filename = File.join Rails.root, 'football.dat'
    result = Score.score_import(filename)
    puts result.inspect
  end
end
