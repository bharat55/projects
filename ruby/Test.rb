require "faraday"
require "pry"

conn = Faraday.new('curl -X POST "http://iptv.ucview.com/api/v1/mdc_remote_control/update_display_instructions" -H "accept: application/json" -H "Authorization: cebb963fa2abe89672a127d24cc63fe6" -H "Content-Type: application/json" -d "{ \"display_ids\": [ 10 ], \"location_ids\": [ 0 ], \"instructions\": { \"input_source\": \"string\", \"url_address\": \"http://example.net/\" }}"') do |c|
  c.use FaradayMiddleware::ParseJson, content_type: "application/json"
  c.use Faraday::Adapter::NetHttp
end

binding.pry



response = conn.get('campaigns')

puts response # => json blob