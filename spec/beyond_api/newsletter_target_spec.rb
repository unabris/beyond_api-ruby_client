RSpec.describe BeyondApi::NewsletterTarget do
  context "when authorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV['API_URL'])
      @session.token.client_credentials
    end

    describe "#create" do
    end

    describe "#delete" do
    end

    describe "#find" do
    end

    describe "#update" do
    end
  end

  context "when unauthorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV['API_URL'])
    end

    describe "#create" do
    end

    describe "#delete" do
    end

    describe "#find" do
    end

    describe "#update" do
    end
  end
end