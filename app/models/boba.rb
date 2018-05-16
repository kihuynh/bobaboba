class Boba

  def search(location)  # Modify so that it only takes in location// hard code the term
    response = HTTPARTY.get("https://api.yelp.com/v3/businesses/search?term=bubble tea&location=#{location}",
      headers = {'Authorization' => 'Bearer #{api_key}'}
    )
# search query of just location somewhere
binding.pry

    results = JSON.parse(response.body)['businesses']['name']
  end
end
# def search(term, location)
#   url = "#{API_HOST}#{SEARCH_PATH}"
#   params = {
#     term: term,
#     location: location,
#     limit: SEARCH_LIMIT
#   }
#
#   response = HTTP.auth("Bearer #{API_KEY}").get(url, params: params)
#   response.parse
# end
