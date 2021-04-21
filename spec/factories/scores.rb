# frozen_string_literal: true

FactoryBot.define do
  factory :score do
    team { 'Team Name' }
    p { 1 }
    w { 1 }
    l { 1 }
    d { 1 }
    f { 1 }
    a { 1 }
    pts { 1 }
  end
end
