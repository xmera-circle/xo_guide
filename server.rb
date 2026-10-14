#!/usr/bin/env ruby

require 'webrick'
require 'socket'

build_dir = File.expand_path('build', __dir__)

server = WEBrick::HTTPServer.new(
  Port: 8000,
  DocumentRoot: build_dir
)

trap('INT') do
  puts "\nShutting down server..."
  server.shutdown
end

puts "Starting server on port 8000..."
puts "Access at: http://#{Socket.gethostname}:8000"
puts "Press Ctrl+C to stop the server"

server.start
