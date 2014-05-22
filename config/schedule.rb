#env :PATH, ENV['PATH']

#every 2.minutes do
#  command "echo ENV['STACK_BASE'] >> /tmp/tja1"
#  command "echo <%= ENV['STACK_PATH'] %> >> /tmp/tja2"
#  command "echo 'test3' >> /tmp/tja3"
#  command "echo $STACK_BASE >> /tmp/tja4"
#  command "echo $STACK_PATH >> /tmp/tja5"
#end

env :PATH, ENV['PATH']

if ENV['PRIMARY'] == 'true'
  if ENV['RAILS_ENV'] == 'production'
    every 4.hours, roles: [:app] do
      rake "bundle exec rake test:work"
    end
  end
end
