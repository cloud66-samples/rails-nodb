env :PATH, ENV['PATH']

every 2.minutes do
  command "ENV['STACK_BASE'] >> /tmp/tja"
end
