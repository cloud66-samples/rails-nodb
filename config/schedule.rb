env :PATH, ENV['PATH']

every 2.minutes do
  command "date >> tja"
end
