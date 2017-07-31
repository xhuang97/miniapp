require 'csv'

namespace :import_incidents_csv do
  task :create_incidents => :environment do
    csv_text = File.read(File.join(Rails.root,'app','csv','testing.csv'))
    csv = CSV.parse(csv_text, :header => true)
    csv.each do |row|
      Input.create!(row.to_hash)
    end
  end

end
