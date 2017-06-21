class SearchImage
  require 'faraday'

  attr_reader :search_term, :colour, :noun

  def initialize
    @search_term = %w[
                    man mountain state ocean country
                    building cat airline wealth  happiness
                    pride fear religion bird book
                    rice snow water phone
                  ]
  end


  def api_url(colour)
    @colour = colour
    @noun = @search_term.sample
    url = "https://pixabay.com/api/?key=5686710-bdb991c76f609df003679b957&q=" + @colour + "+" + @noun + "&image_type=photo&pretty=true&per_page=5"
    parse_api(url)
  end


  def parse_api(url)
    response = Faraday.get(url)
    {
     "noun": noun, "colour": colour,
     "http_response_ms": response.status,
     "result": JSON.parse(response.body)["hits"]
   }

  end
end
