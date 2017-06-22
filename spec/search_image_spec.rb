require './lib/search_image'

describe SearchImage do
  describe '#initialize' do
    it 'initialize image search instance with 19 search_term' do
      expect(subject.search_term.size).to eq 19
    end
  end

  describe '#api_url' do
    it 'calls method parse_api' do
      expect(subject).to receive(:parse_api)
      subject.api_url("red")
    end
  end

  describe '#parse_api' do
    it 'parse api and returns a hash with noun, colour, https, url and result' do
      url = "https://pixabay.com/api/?key=#{ENV["API_KEY"]}&q=yellow+flowers&image_type=photo&pretty=true&per_page=5"
      expect(subject.parse_api(url).keys).to eq [:noun, :colour, :http_response_ms, :url, :result]
    end
  end
end
