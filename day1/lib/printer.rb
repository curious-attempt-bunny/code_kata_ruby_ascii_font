class Printer
  RAW_TEXT = 
<<RAW
 .d8888b.  d888   .d8888b.  .d8888b.     d8888 888888888  .d8888b. 8888888888 .d8888b.  .d8888b.  
d88P  Y88bd8888  d88P  Y88bd88P  Y88b   d8P888 888       d88P  Y88b      d88Pd88P  Y88bd88P  Y88b 
888    888  888         888     .d88P  d8P 888 888       888            d88P Y88b. d88P888    888 
888    888  888       .d88P    8888"  d8P  888 8888888b. 888d888b.     d88P   "Y88888" Y88b. d888 
888    888  888   .od888P"      "Y8b.d88   888      "Y88b888P "Y88b 88888888 .d8P""Y8b. "Y888P888 
888    888  888  d88P"     888    8888888888888       888888    888  d88P    888    888       888 
Y88b  d88P  888  888"      Y88b  d88P      888 Y88b  d88PY88b  d88P d88P     Y88b  d88PY88b  d88P 
 "Y8888P" 8888888888888888  "Y8888P"       888  "Y8888P"  "Y8888P" d88P       "Y8888P"  "Y8888P"  
RAW
  MARKERS = 
<<MARK
.         .      .         .         .         .         .         .         .         .         .
MARK
  CHARACTERS = '0123456789'

  def print(string)
    results = []
    string.split(//).each do |char|
      digit_for(char).each_with_index do |line, index|
        results[index] = '' unless results[index]
        results[index] += line
      end
    end
    results
  end

  private

  def digit_for(character)
    index = CHARACTERS.index(character)
    start = offset(index)
    finish = offset(index+1)
    RAW_TEXT.split(/\n/).map { |line| line[start...finish] }
  end

  def offset(index)
    i = -1
    MARKERS.split(//).map { |char| i += 1
      char == '.' ? i : -1 }.reject { |i| i == -1 }[index]
  end
end