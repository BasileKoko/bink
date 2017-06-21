class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :noun
      t.string :colour
      t.string :http_response_ms
      t.string :url

      t.timestamps
    end
  end
end
