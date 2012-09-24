class Printer
  DIGITS =
<<RAW
 .d8888b.  d888  XXX .d8888b.  .d8888b.     d8888 888888888  .d8888b. 8888888888 .d8888b.  .d8888b.  
d88P  Y88bd8888  XXXd88P  Y88bd88P  Y88b   d8P888 888       d88P  Y88b      d88Pd88P  Y88bd88P  Y88b 
888    888  888  XXX       888     .d88P  d8P 888 888       888            d88P Y88b. d88P888    888 
888    888  888  XXX     .d88P    8888"  d8P  888 8888888b. 888d888b.     d88P   "Y88888" Y88b. d888 
888    888  888  XXX .od888P"      "Y8b.d88   888      "Y88b888P "Y88b 88888888 .d8P""Y8b. "Y888P888 
888    888  888  XXXd88P"     888    8888888888888       888888    888  d88P    888    888       888 
Y88b  d88P  888  XXX888"      Y88b  d88P      888 Y88b  d88PY88b  d88P d88P     Y88b  d88PY88b  d88P 
 "Y8888P" 8888888XXX888888888  "Y8888P"       888  "Y8888P"  "Y8888P" d88P       "Y8888P"  "Y8888P" 
RAW
  CHARS = "0123456789"
  def print(string)
    DIGITS.split(/\n/).inject('') do |result, line|
      result + string.chars.inject('') do |result, char|
        result + line[CHARS.index(char)*10...CHARS.index(char)*10+10].gsub(/X/, '')
      end + "\n"
    end
  end
end