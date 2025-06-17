# extract_urls.rb

seed_file = 'db/seeds.rb'
url_regex = /(https?:\/\/[^\s'"]+\.(jpg|jpeg|png|gif))/i

urls = []

File.readlines(seed_file).each do |line|
  line.scan(url_regex).each do |match|
    urls << match[0]
  end
end

urls.uniq!

File.open('extracted_urls.txt', 'w') do |file|
  urls.each { |url| file.puts(url) }
end

puts "Extracted #{urls.size} unique URLs to extracted_urls.txt"

