require 'net/http'
require 'uri'

#   {
#      "followers_count" : 840,
#      "screen_name" : "vandervort_raven_i",
#      "profile_link" : "https://twitter.com/vandervort_raven_i",
#      "created_at" : "Mon Sep 24 03:35:21 +0000 2012",
#      "link" : "https://twitter.com/vandervort_raven_i/status/812382",
#      "retweet_count" : 0,
#      "text" : "We need to naviga @locaweb ",
#      "favorite_count" : 175
#   }
class Twit
  attr_accessor :followersCount
  attr_accessor :screenName
  attr_accessor :profileLink
  attr_accessor :createdAt
  attr_accessor :link
  attr_accessor :retweetCount
  attr_accessor :text
  attr_accessor :favoriteCount 
end

class TwitSorter
  def SortTwits
  
  end
end

uri = URI.parse("http://tweeps.locaweb.com.br/tweeps")
request = Net::HTTP::Get.new(uri)
request["Username"] = "jc.moretti.jr1991@gmail.com"

req_options = {
  use_ssl: uri.scheme == "https",
}

response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
  http.request(request)
end



