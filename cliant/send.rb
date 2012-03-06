require 'rubygems'
require "open4"
require "socket"


kstid, kstdin, kstdout, kstderr = Open4::popen4 "./chuck kb.ck"
sock = TCPSocket.open("hatone.info", 3535)

kstderr.each {|line|
     str = line.to_s
     str.delete!(":(int)")
#print str
     sock.write(str)
    STDOUT.flush
}

sock.close
