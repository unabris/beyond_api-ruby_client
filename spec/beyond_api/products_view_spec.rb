RSpec.describe BeyondApi::ProductsView do
  context "when authorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV['API_URL'])
      @session.token.client_credentials
    end

    describe "#all" do
    end

    describe "#available_tags" do
    end

    describe "#find" do
    end

    describe "#search_by_tag" do
    end

    describe "#search_by_term" do
    end
  end

  context "when unauthorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV['API_URL'])
    end

    describe "#all" do
    end

    describe "#available_tags" do
    end

    describe "#find" do
    end

    describe "#search_by_tag" do
    end

    describe "#search_by_term" do
    end
  end
end
