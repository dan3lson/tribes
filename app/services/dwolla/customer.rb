module Dwolla
  class Customer

    def self.all
      $dwolla.auths.client.get("customers", limit: 10)
    end

    def self.search(term)
      $dwolla.auths.client.get("customers", search: term)
    end

    def self.create_customer_url(id)
      "https://api-sandbox.dwolla.com/customers/#{id}"
    end

    def self.search_to_a(term)
      search(term)._embedded.customers
    end

    def self.get_id(term)
      search_to_a(term).first.id
    end

    def create
      $dwolla.auths.client.post("customers", params)
    end

    def create_funding_source
      $dwolla.auths.client.post("#{customer_url}/funding-sources", params)
    end

    private

    attr_reader :params

    def initialize(params)
      @params = params
    end
  end
end
