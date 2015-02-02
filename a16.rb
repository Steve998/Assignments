
# Require the 'net/http'
# Set the variable uri to the URL
# Load response with the data
require 'net/http'
uri = URI("http://www.scifiscripts.com/scripts/2001.txt")
response = Net::HTTP.get(uri)

# Create the file and copy the data into the file
file = File.open("file_for_script.txt","a") do |line|
 line.puts response
end
