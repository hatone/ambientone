require 'rubygems'
require "open4"

tid, kstdin, kstdout, kstderr = Open4::popen4 "telnet hatone.info 3535"

kstdout.each {|line|
print "\a"
print line
}

