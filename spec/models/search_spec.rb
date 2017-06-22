require 'rails_helper'
require 'spec_helper'

RSpec.describe Search, type: :model do
  describe 'Validations for model Search' do
    it { should validate_presence_of(:noun) }
    it { should validate_presence_of(:colour) }
    it { should validate_presence_of(:http_response_ms) }
    it { should validate_presence_of(:url) }
  end
end
