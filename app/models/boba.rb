class Boba

  def search(location)  # Modify so that it only takes in location// hard code the term
    response = HTTPARTY.get("https://api.yelp.com/v3/businesses/search?term=bubble tea&location=#{location}",
      :headers => {'Authorization' => 'Bearer #{api_key}'}
    )
# search query of just location somewhere
binding.pry

    results = JSON.parse(response.body)['businesses']['name']
  end
end
