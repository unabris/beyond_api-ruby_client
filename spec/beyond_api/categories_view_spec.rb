RSpec.describe BeyondApi::CategoriesView do
  context "when authorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV['API_URL'])
      @session.token.client_credentials
    end

    describe "#all" do
    end

    describe "#find" do
    end

    describe "#products" do
    end

    describe "#search_by_label" do
    end

    describe "#search_by_product_id" do
    end

    describe "#search_by_product" do
    end
  end

  context "when unauthorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV['API_URL'])
    end

    describe "#all" do
    end

    describe "#find" do
    end

    describe "#products" do
    end

    describe "#search_by_label" do
    end

    describe "#search_by_product_id" do
    end

    describe "#search_by_product" do
    end
  end
end
