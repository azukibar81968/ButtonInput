require 'io/console'
require "socket"

# # 127.0.0.1(localhost)の2001番へ接続
# sock = TCPSocket.open("127.0.0.1", 2001)


# sock.close

def send_file(host, port, name)
  puts "#{name} を送信中です..."
  open(name, "rb") do |file|
    size = File.size(name)
    sock = TCPSocket.open(host, port)
    sock.puts "PUT_FILE #{name} #{size}"
    sock.write(file.read)
    sock.close
  end
  puts "#{name} の送信が完了しました"
end

# send_file("127.0.0.1",2001,"hoge.json")
