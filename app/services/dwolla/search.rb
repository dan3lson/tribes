module Dwolla
  class Search
    class << self
      def customers(term)
        $dwolla.auths.client.get("customers", search: term)
      end

      def search_to_a(term)
        search(term)._embedded.customers
      end

      def get_id(term)
        search_to_a(term).first.id
      end
    end
  end
end
