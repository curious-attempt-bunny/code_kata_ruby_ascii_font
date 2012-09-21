require 'rspec'
require 'printer'

describe Printer, '#print' do
  it "return text for a single digit" do
    printer = Printer.new
    printer.print('1').should eq([' d888  ',
                                  'd8888  ',
                                  '  888  ',
                                  '  888  ',
                                  '  888  ',
                                  '  888  ',
                                  '  888  ',
                                  '8888888'])
  end
  it "return text for two digits" do
    printer = Printer.new
    printer.print('23').should eq([ ' .d8888b.  .d8888b. ',
                                    'd88P  Y88bd88P  Y88b',
                                    '       888     .d88P',
                                    '     .d88P    8888" ',
                                    ' .od888P"      "Y8b.',
                                    'd88P"     888    888',
                                    '888"      Y88b  d88P',
                                    '888888888  "Y8888P" '])
  end

end