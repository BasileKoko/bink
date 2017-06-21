class Search < ApplicationRecord
  validates :noun, :colour, :http_response_ms, :url, presence: true
end
