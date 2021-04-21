# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Score, type: :model do
  it 'is valid with all valid attributes' do
    team = FactoryBot.attributes_for(:score)
    expect(Score.new(team)).to be_valid
  end

  it 'is invalid with string in P' do
    team = FactoryBot.attributes_for(:score, p: 'string')
    expect(Score.new(team)).not_to be_valid
  end

  it 'is invalid with string in w' do
    team = FactoryBot.attributes_for(:score, w: 'string')
    expect(Score.new(team)).not_to be_valid
  end
  it 'is invalid with string in l' do
    team = FactoryBot.attributes_for(:score, l: 'string')
    expect(Score.new(team)).not_to be_valid
  end

  it 'is invalid with string in f' do
    team = FactoryBot.attributes_for(:score, f: 'string')
    expect(Score.new(team)).not_to be_valid
  end
  it 'is invalid with string in a' do
    team = FactoryBot.attributes_for(:score, a: 'string')
    expect(Score.new(team)).not_to be_valid
  end

  it 'is invalid with invalid name' do
    team = FactoryBot.attributes_for(:score, team: nil)
    expect(Score.new(team)).not_to be_valid
  end

  it 'is invalid with long team names' do
    name = (51).times.map { (65 + rand(26)).chr }.join
    expect(Score.new(team: name)).not_to be_valid
  end

  it 'is invalid with 2 character team name' do
    name = (2).times.map { (65 + rand(26)).chr }.join
    expect(Score.new(team: name)).not_to be_valid
  end
end
