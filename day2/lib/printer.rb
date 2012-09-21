class Printer
  DISPLAY = {}
  DISPLAY['1'] = <<RAW
 d888  
d8888  
  888  
  888  
  888  
  888  
  888  
8888888
RAW
   DISPLAY['2'] = <<RAW
 .d8888b. 
d88P  Y88b
       888
     .d88P
 .od888P" 
d88P"     
888"      
888888888 
RAW
   DISPLAY['3'] = <<RAW
 .d8888b.  
d88P  Y88b 
     .d88P 
    8888"  
     "Y8b. 
888    888 
Y88b  d88P 
 "Y8888P"  
RAW
   DISPLAY['4'] = <<RAW
    d8888 
   d8P888 
  d8P 888 
 d8P  888 
d88   888 
8888888888
      888 
      888 
RAW
   DISPLAY['5'] = <<RAW
888888888 
888       
888       
8888888b. 
     "Y88b
       888
Y88b  d88P
 "Y8888P" 
RAW

  def print(string)
    result = []
    string.each_char do |char|
      DISPLAY[char].split(/\n/).each_with_index do |line, index|
        result[index] = '' unless result[index]
        result[index] += line
      end
    end
    result.join("\n")+"\n"
  end

end