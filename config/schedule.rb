env :PATH, ENV['PATH']

every 2.minutes do
  command "date >> /tmp/tja"
end
