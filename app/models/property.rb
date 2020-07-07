class Property < ApplicationRecord
  belongs_to :agent
  has_one :address

# SELECT properties.id as property_id, price, beds, baths, sold, sq_ft, ad.city, ad.street, ad.zip, a.first_name, a.last_name, a.email
# FROM properties
# INNER JOIN addresses ad ON ad.property_id = properties.id
# INNER JOIN agents a ON a.id = properties.agent_id
# WHERE properties.sold != TRUE
# ORDER BY a.id

  def self.available
    select('properties.id as property_id, price, beds, baths, sold, sq_ft, ad.city, ad.street, ad.zip, a.first_name, a.last_name, a.email, a.id as agent_id')
    .joins('INNER JOIN addresses ad ON ad.property_id = properties.id
            INNER JOIN agents a ON a.id = properties.agent_id')
    .where('properties.sold <> TRUE')
    .order('a.id')
  end
end
