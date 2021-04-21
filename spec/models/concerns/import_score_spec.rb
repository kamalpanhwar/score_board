# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ImportScore do
  let(:file) { double('file') }
  let(:data) do
    ["       Team            P     W    L   D    F      A     Pts\n",
     "    1. Arsenal         38    26   9   3    79  -  36    87\n",
     "    2. Another         38    24   8   6    67  -  30    80\n",
     "    3. LiverPoolGOO    38    24   5   9    87  -  45    77\n"]
  end
  let(:invalid_line) do
    ["       Team            P     W    L   D    F      A     Pts\n",
     "    1. Arsenal         x38    26   9   3    79  -  36    87\n",
     "    2. Another         38    24   8   6    67  -  30    80\n",
     "    3. LiverPoolGOO    38    24   5   9    87  -  45    77\n"]
  end
  it 'should import data' do
    expect(File).to receive(:new).with(File.join(Rails.root, 'football.dat')).and_return(file)
    expect(file).to receive(:readlines).and_return(data)
    ImportScore.new(File.join(Rails.root, 'football.dat')).import_file
    expect(Score.count).to eql(3)
  end

  it 'should not import line where incorrect data' do
    filename_path = File.join Rails.root, 'football.dat'
    expect(File).to receive(:new).with(filename_path).and_return(file)
    expect(file).to receive(:readlines).and_return(invalid_line)
    ImportScore.new(filename_path).import_file
    expect(Score.count).to eql(2)
  end
end
