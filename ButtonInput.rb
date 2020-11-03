require './consoleInput.rb'
require './createJson.rb'

p "start button input"

host = "127.0.0.1"
port = 2001

def send(host,port,button)
  createBIJson(button,button)
  send_file(host,port,"jsonfile/#{button}.json")
end

while c = STDIN.getch
  if(c == 'a')
    p "button a"
    send(host,port,'a')
  end
  if(c == 'b')
    p "button b"
    send(host,port,'b')  
  end
  if(c == 'c')
    p "button c"
    send(host,port,'c') 
  end
  if(c == 'd')
    p "button d"
  end
  if(c == 'k')
    p "finish button input"
    break;
  end
end
