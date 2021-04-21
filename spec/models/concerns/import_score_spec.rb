# frozen_string_literal: true

require 'rails_helper'

describe ImportScore do
  let(:file) { double('file') }
  let(:data) do
    ["       Team            P     W    L   D    F      A     Pts\n",
     "    1. Arsenal         38    26   9   3    79  -  36    87\n",
     "    2. Another         38    24   8   6    67  -  30    80\n",
     "    3. LiverPoolGOO    38    24   5   9    87  -  45    77\n"]
  end

  it 'should import data from file' do
    file_path = File.join Rails.root, 'football.dat'
    expect(File).to receive(:new).with(file_path).and_return(file)
    expect(file).to receive(:readlines).and_return(data)
    ImportScore.new(file_path)
    expect(Score.count).to eql(3)
  end
end
