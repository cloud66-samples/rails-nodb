env :PATH, ENV['PATH']

every 2.minutes do
  command "ENV['STACK_BASE'] >> /tmp/tja"
  command "ENV['STACK_PATH'] >> /tmp/tja"
  command "test3 >> /tmp/tja"
  command "$STACK_BASE >> /tmp/tja"
  command "$STACK_PATH >> /tmp/tja"
end
