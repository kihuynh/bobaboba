class Boba

  def search(term, location)  # Modify so that it only takes in location// hard code the term
    response = HTTPARTY.get("https://api.yelp.com/v3/businesses/search",
      headers = {'Authorization' => 'Bearer #{api_key}'}
    )
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
