RSpec.describe BeyondApi::Shop do
  context "when authorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV['API_URL'])
      @session.token.client_credentials
    end

    describe "#address" do
    end

    describe "#attribute" do
    end

    describe "#attributes" do
    end

    describe "#close" do
    end

    describe "#create_attribute" do
    end

    describe "#create_image" do
    end

    describe "#current" do
    end

    describe "#delete_attribute" do
    end

    describe "#delete_image" do
    end

    describe "#image" do
    end

    describe "#images" do
    end

    describe "#legal_content" do
    end

    describe "#legal_contents" do
    end

    describe "#legal_details" do
    end

    describe "#open" do
    end

    describe "#search_images_by_label" do
    end

    describe "#update" do
    end

    describe "#update_address" do
    end

    describe "#update_attribute" do
    end

    describe "#update_legal_content" do
    end

    describe "#update_legal_details" do
    end

    describe "#upload_image" do
    end
  end

  context "when unauthorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV['API_URL'])
    end

    describe "#address" do
    end

    describe "#attribute" do
    end

    describe "#attributes" do
    end

    describe "#close" do
    end

    describe "#create_attribute" do
    end

    describe "#create_image" do
    end

    describe "#current" do
    end

    describe "#delete_attribute" do
    end

    describe "#delete_image" do
    end

    describe "#image" do
    end

    describe "#images" do
    end

    describe "#legal_content" do
    end

    describe "#legal_contents" do
    end

    describe "#legal_details" do
    end

    describe "#open" do
    end

    describe "#search_images_by_label" do
    end

    describe "#update" do
    end

    describe "#update_address" do
    end

    describe "#update_attribute" do
    end

    describe "#update_legal_content" do
    end

    describe "#update_legal_details" do
    end

    describe "#upload_image" do
    end
  end
end
