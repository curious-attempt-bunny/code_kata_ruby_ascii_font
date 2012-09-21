require 'rspec'
require 'printer'

describe Printer, '#print' do
  it "return text for a single digit" do
    printer = Printer.new
    printer.print('1').should eq(
<<RAW
 d888  
d8888  
  888  
  888  
  888  
  888  
  888  
8888888
RAW
    )
  end
  it "return text for a string of digits" do
    printer = Printer.new
    printer.print('245').should eq(
<<RAW
 .d8888b.     d8888 888888888 
d88P  Y88b   d8P888 888       
       888  d8P 888 888       
     .d88P d8P  888 8888888b. 
 .od888P" d88   888      "Y88b
d88P"     8888888888       888
888"            888 Y88b  d88P
888888888       888  "Y8888P" 
RAW
    )
  end   
end