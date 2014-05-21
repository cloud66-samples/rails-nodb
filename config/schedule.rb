#env :PATH, ENV['PATH']

#every 2.minutes do
#  command "echo ENV['STACK_BASE'] >> /tmp/tja1"
#  command "echo <%= ENV['STACK_PATH'] %> >> /tmp/tja2"
#  command "echo 'test3' >> /tmp/tja3"
#  command "echo $STACK_BASE >> /tmp/tja4"
#  command "echo $STACK_PATH >> /tmp/tja5"
#end

require 'active_support/all'

env :PATH, ENV['PATH']

def eastern(x)
  ActiveSupport::TimeWithZone.new(nil, ActiveSupport::TimeZone['Eastern Time (US & Canada)'], DateTime.parse(x)).utc
end

if ENV['PRIMARY'] == 'true'
  if ENV['RAILS_ENV'] == 'production'
    every 4.hours, roles: [:app] do
      command "pwd"
    end
  end

  every :day, at: eastern('1:00pm'), roles: [:app] do
    command "pwd"
  end

  every :day, at: eastern('5:00pm'), roles: [:app] do
    command "pwd"
  end

  every :day, at: eastern('5:00pm'), roles: [:app] do
    command "pwd"
  end
end
