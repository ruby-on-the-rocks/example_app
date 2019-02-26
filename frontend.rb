require "http"

system "clear"
puts "Welcome to my awesome app!"
puts "Choose an option:"
puts "[1] Random fortune"
puts "[2] Lotto numbers"
puts "[3] Page visit count"

input_option = gets.chomp
if input_option == "1"
  response = HTTP.get("http://localhost:3000/fortune_url")
  fortune = response.parse["message"]
  puts fortune
elsif input_option == "2"
  response = HTTP.get("http://localhost:3000/lotto_url")
  numbers = response.parse["lotto_numbers"]
  puts numbers
elsif input_option == "3"
  response = HTTP.get("http://localhost:3000/counter_url")
  count = response.parse["visit_count"]
  puts count
end
