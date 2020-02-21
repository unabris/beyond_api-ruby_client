RSpec.describe BeyondApi::Shop do
  context "when authorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV["API_URL"])
      @session.token.client_credentials
    end

    describe "#address" do
      it "returns a successful response" do
        expect(@session.shop.address).not_to be_instance_of(BeyondApi::Error)
      end
    end

    describe "#attribute" do
    end

    describe "#attributes" do
      it "returns a successful response" do
        expect(@session.shop.attributes).not_to be_instance_of(BeyondApi::Error)
      end
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
      @session = BeyondApi::Session.new(api_url: ENV["API_URL"])
    end

    describe "#address" do
      it "returns a successful response" do
        expect(@session.shop.address).not_to be_instance_of(BeyondApi::Error)
      end
    end

    describe "#attribute" do
    end

    describe "#attributes" do
      it "returns a successful response" do
        expect(@session.shop.attributes).not_to be_instance_of(BeyondApi::Error)
      end
    end

    describe "#create_attribute" do
    end

    describe "#create_image" do
    end

    describe "#current" do
      it "returns a successful response" do
        expect(@session.shop.current).not_to be_instance_of(BeyondApi::Error)
      end
    end

    describe "#delete_attribute" do
    end

    describe "#delete_image" do
    end

    describe "#image" do
    end

    describe "#images" do
      it "returns a successful response" do
        expect(@session.shop.images).not_to be_instance_of(BeyondApi::Error)
      end
    end

    describe "#legal_content" do
    end

    describe "#legal_contents" do
      it "returns a successful response" do
        expect(@session.shop.legal_contents).not_to be_instance_of(BeyondApi::Error)
      end
    end

    describe "#legal_details" do
      it "returns a successful response" do
        expect(@session.shop.legal_details.error_id).to eq("unauthorized")
      end
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
