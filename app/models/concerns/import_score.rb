# frozen_string_literal: true

# class to import scores
class ImportScore
  attr_reader :lines, :keys

  def initialize(file)
    @liens = File.new(file).readlines
  end

  def import_file
    @keys = headers
    scores = process_lines
    save_data(scores)
  end

  private

  def process_lines
    scores = []
    lines.each do |line|
      next if line.include? '------'

      params = {}
      values = line.strip.split(/\W+/)[1..]
      keys.each_with_index do |key, i|
        params[key.downcase] = values[i] if valid_data(key.downcase, value[i])
      end
    score << Score.new(params)
    end
    scores
  end

  def save_data(scores)
    # need model to save
  end

  def headers
    header = lines.shift.strip
    header.split(/\W+/)[0..]
  end

  def valid_data(key, value)
    if key == 'team'
      value.instance_of? String
    else
      value.instace_of? Integer
    end
  end
end
