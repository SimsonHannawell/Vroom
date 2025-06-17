require "cloudinary"
require "cloudinary/uploader"
require "json"

# Load Cloudinary config from environment
Cloudinary.config_from_url(ENV['CLOUDINARY_URL'])

input_file = "extracted_urls.txt"
output_file = "uploaded_images.json"

uploaded_images = {}

File.readlines(input_file).map(&:strip).uniq.each do |url|
  next if url.empty?

  puts "Uploading: #{url}"
  begin
    response = Cloudinary::Uploader.upload(url, resource_type: :image)
    uploaded_images[url] = response["secure_url"]
    puts "Uploaded to: #{response["secure_url"]}"
  rescue StandardError => e
    puts "Failed to upload #{url}: #{e.message}"
  end
end

File.write(output_file, JSON.pretty_generate(uploaded_images))
puts "Upload complete. URLs saved in #{output_file}"
