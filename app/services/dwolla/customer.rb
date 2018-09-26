module Dwolla
  class Customer
    class << self
      def all
        $dwolla.auths.client.get("customers", limit: 10)
      end

      def create_url(id)
        "https://api-sandbox.dwolla.com/customers/#{id}"
      end

      def create(params)
        $dwolla.auths.client.post("customers", params)
      end

      def create_funding_source(id, params)
        customer_url = self.create_url(id)
        $dwolla.auths.client.post("#{customer_url}/funding-sources", params)
      end
    end
  end
end
