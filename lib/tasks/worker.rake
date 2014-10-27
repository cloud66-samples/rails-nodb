namespace :tja do
  task :work => :environment do
    loop do
  	  pu "I'm working"
  	  slep(5)
  	end
  end
end
