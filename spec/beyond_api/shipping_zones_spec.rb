RSpec.describe BeyondApi::ShippingZones do
  context "when authorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV["API_URL"])
      @session.token.client_credentials
    end

    describe "#all" do
      it "returns a successful response" do
        expect(@session.shipping_zones.all).not_to be_instance_of(BeyondApi::Error)
      end
    end

    describe "#create" do
    end

    describe "#create" do
    end

    describe "#delete" do
    end

    describe "#delete" do
    end

    describe "#find" do
    end

    describe "#find" do
    end

    describe "#shipping" do
    end

    describe "#shipping" do
    end

    describe "#sort" do
    end

    describe "#sort" do
    end

    describe "#update" do
    end
  end

  context "when unauthorized" do
    before(:all) do
      @session = BeyondApi::Session.new(api_url: ENV["API_URL"])
    end

    describe "#all" do
      it "returns an unauthorized error" do
        expect(@session.shipping_zones.all.error_id).to eq("unauthorized")
      end
    end

    describe "#create" do
    end

    describe "#create" do
    end

    describe "#delete" do
    end

    describe "#delete" do
    end

    describe "#find" do
    end

    describe "#find" do
    end

    describe "#shipping" do
    end

    describe "#shipping" do
    end

    describe "#sort" do
    end

    describe "#sort" do
    end

    describe "#update" do
    end
  end
end
