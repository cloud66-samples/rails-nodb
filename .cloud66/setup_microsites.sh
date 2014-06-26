#!/usr/bin/env ruby
stack_base = ENV["STACK_BASE"] || "/var/deploy/morgan_law_test/web_head"
base = stack_base + "/shared/microsites"
File.open("/tmp/testing.txt", 'w') { |file| file.write("#{base}") }
