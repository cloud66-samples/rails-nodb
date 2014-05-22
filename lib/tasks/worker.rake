namespace :test do
  task :work => :environment do
    loop do
  	  puts "I'm working"
  	  sleep(5)
  	end
  end
  
  task :work_single => :environment do
  	  puts "I'm working"
  	  File.open('/tmp/crontab_rake_output.log', 'w') {|f| f.write("I'm working!") }
  end
end
