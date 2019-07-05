namespace :grape do
  desc "routes"
  task :routes => :environment do
    APIBase.routes.map { |route| puts "#{route} \n" }
  end
end