env :PATH, ENV['PATH']

every 10.minutes do
  command "pwd"
end
every 45.minutes do
  command "pwd"
end
