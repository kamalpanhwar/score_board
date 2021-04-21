# frozen_string_literal: true

# Controller for scores
class ScoresController < ApplicationController
  def index
    @scores = Score.all
  end

  def actual_file
    @data = File.read(File.join(Rails.root, 'football.dat'))
  end
end
