class Request
  class << self
    attr_accessor :string

    def initialize(string)
      @string = string
    end

    def get
      token.get
    end

    def token
      Connection.api.auths.client
    end
  end
end
