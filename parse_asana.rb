require 'csv'

# Read and parse the CSV file
data = CSV.read('search_results.csv', headers: true)

# Sort by 'Last Modified' (column 3) in descending order
sorted_data = data.sort_by { |info| Date.parse(info['Last Modified']) }.reverse

# Output the sorted data
sorted_data.each do |info|
  puts "#{info['Last Modified']} - #{info['Name']}"
end
